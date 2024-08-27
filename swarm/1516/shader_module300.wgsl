struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(65140u, 49446u, 4294967295u, 4294967295u), -357f, vec4<u32>(52776u, 4294967295u, 34813u, 67089u), vec3<f32>(-743f, 497f, -520f), vec2<u32>(4294967295u, 53263u)), Struct_1(vec4<u32>(31613u, 3062u, 0u, 4294967295u), 857f, vec4<u32>(46230u, 19428u, 0u, 0u), vec3<f32>(-1523f, 286f, -2122f), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<u32>(84132u, 1u, 4294967295u, 3890u), 611f, vec4<u32>(11568u, 1u, 22497u, 35928u), vec3<f32>(-394f, 173f, -770f), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(72282u, 4294967295u, 24133u, 22482u), 309f, vec4<u32>(1u, 32018u, 4294967295u, 4294967295u), vec3<f32>(-626f, -928f, 928f), vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 53275u, 30309u), -419f, vec4<u32>(9994u, 40641u, 4294967295u, 1u), vec3<f32>(-836f, 959f, -1153f), vec2<u32>(6194u, 0u)), Struct_1(vec4<u32>(1u, 5126u, 33297u, 68631u), -1297f, vec4<u32>(35633u, 73111u, 5056u, 125385u), vec3<f32>(-222f, 906f, 992f), vec2<u32>(0u, 16895u)), Struct_1(vec4<u32>(31696u, 1u, 0u, 11209u), 625f, vec4<u32>(35192u, 0u, 16654u, 17170u), vec3<f32>(990f, -839f, 250f), vec2<u32>(55243u, 9135u)), Struct_1(vec4<u32>(4294967295u, 0u, 29832u, 4294967295u), 1275f, vec4<u32>(57315u, 38855u, 1u, 0u), vec3<f32>(-172f, -267f, 979f), vec2<u32>(1u, 36983u)), Struct_1(vec4<u32>(1758u, 41019u, 4294967295u, 4294967295u), 1684f, vec4<u32>(5829u, 42214u, 14490u, 72511u), vec3<f32>(-497f, 174f, -381f), vec2<u32>(13554u, 1u)), Struct_1(vec4<u32>(31518u, 1u, 7965u, 4846u), -496f, vec4<u32>(27073u, 4294967295u, 30513u, 0u), vec3<f32>(-542f, 2224f, -458f), vec2<u32>(111885u, 1u)), Struct_1(vec4<u32>(0u, 5538u, 4294967295u, 1u), -1164f, vec4<u32>(1u, 1u, 21425u, 0u), vec3<f32>(-1334f, -810f, 900f), vec2<u32>(4294967295u, 70566u)), Struct_1(vec4<u32>(4294967295u, 51933u, 40073u, 18328u), 490f, vec4<u32>(38546u, 30714u, 23578u, 0u), vec3<f32>(1436f, -700f, 310f), vec2<u32>(35808u, 1395u)), Struct_1(vec4<u32>(52645u, 14621u, 28961u, 4294967295u), 438f, vec4<u32>(0u, 1u, 5374u, 1u), vec3<f32>(-2636f, 184f, 1158f), vec2<u32>(1u, 42635u)), Struct_1(vec4<u32>(0u, 7994u, 29836u, 2158u), -2684f, vec4<u32>(0u, 13636u, 1u, 25833u), vec3<f32>(1965f, -569f, -378f), vec2<u32>(40294u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 12661u), -1518f, vec4<u32>(37491u, 0u, 1u, 1u), vec3<f32>(-398f, 283f, -929f), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(0u, 38785u, 19093u, 1u), 151f, vec4<u32>(0u, 1u, 1u, 1u), vec3<f32>(757f, 1000f, -1196f), vec2<u32>(1u, 53243u)), Struct_1(vec4<u32>(0u, 12570u, 44970u, 28958u), -539f, vec4<u32>(4294967295u, 1u, 22776u, 4294967295u), vec3<f32>(1487f, 2014f, -908f), vec2<u32>(72268u, 51277u)), Struct_1(vec4<u32>(59681u, 2030u, 120361u, 64006u), -309f, vec4<u32>(1u, 1u, 50671u, 71800u), vec3<f32>(762f, -122f, -120f), vec2<u32>(21831u, 16098u)), Struct_1(vec4<u32>(60085u, 0u, 51565u, 29230u), 914f, vec4<u32>(59980u, 77982u, 25869u, 160979u), vec3<f32>(-1040f, -1000f, -1235f), vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(61525u, 39618u, 4294967295u, 63994u), 1210f, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec3<f32>(494f, -457f, 501f), vec2<u32>(1u, 19154u)), Struct_1(vec4<u32>(87186u, 4294967295u, 22129u, 9456u), 777f, vec4<u32>(40005u, 14284u, 69209u, 0u), vec3<f32>(1000f, -570f, 577f), vec2<u32>(0u, 33097u)), Struct_1(vec4<u32>(40578u, 0u, 22924u, 44102u), -2685f, vec4<u32>(19811u, 41095u, 1u, 1u), vec3<f32>(518f, -1977f, -1011f), vec2<u32>(0u, 72653u)), Struct_1(vec4<u32>(0u, 44846u, 17229u, 1u), -489f, vec4<u32>(88389u, 19810u, 45101u, 58221u), vec3<f32>(-220f, 1000f, -242f), vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(0u, 84336u, 1u, 0u), -1607f, vec4<u32>(59420u, 1u, 4294967295u, 314u), vec3<f32>(2734f, -1000f, -3266f), vec2<u32>(62109u, 0u)), Struct_1(vec4<u32>(625u, 1u, 0u, 41150u), -803f, vec4<u32>(4294967295u, 92311u, 4294967295u, 1u), vec3<f32>(891f, 1000f, -539f), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<u32>(1u, 51426u, 4760u, 36684u), -422f, vec4<u32>(91174u, 7746u, 21022u, 1u), vec3<f32>(2208f, -1208f, -1000f), vec2<u32>(0u, 70894u)), Struct_1(vec4<u32>(4869u, 1u, 12631u, 60424u), -1000f, vec4<u32>(15509u, 0u, 30351u, 0u), vec3<f32>(1000f, -1000f, 470f), vec2<u32>(23394u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 37299u, 0u), 109f, vec4<u32>(4294967295u, 3553u, 0u, 0u), vec3<f32>(568f, -1000f, -222f), vec2<u32>(57682u, 0u)), Struct_1(vec4<u32>(27405u, 92376u, 3755u, 1u), -748f, vec4<u32>(71807u, 1u, 76558u, 0u), vec3<f32>(1524f, 1000f, 814f), vec2<u32>(1u, 18957u)), Struct_1(vec4<u32>(1u, 12749u, 1u, 21733u), 511f, vec4<u32>(0u, 67284u, 0u, 19087u), vec3<f32>(-978f, -1000f, 304f), vec2<u32>(9139u, 0u)), Struct_1(vec4<u32>(0u, 17851u, 43096u, 31102u), 390f, vec4<u32>(35736u, 80750u, 14402u, 1u), vec3<f32>(497f, -277f, -439f), vec2<u32>(1u, 14911u)));

var<private> global3: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(step(global3.x, -1174f));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = select(select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, true), true), vec4<bool>(true, 501f != global0.a.d.x, true, any(vec4<bool>(true, true, true, true))), true), true), select(select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)), false), vec4<bool>(true, true, true, true)), !vec4<bool>(global0.a.d.x != -2497f, all(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, true, false))), vec4<bool>(u_input.a.x >= u_input.a.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), all(vec4<bool>(true, false, false, true)), true)), vec4<bool>(true, true, true, true));
    global2 = array<Struct_1, 31>();
    let var_1 = arg_0;
    let var_2 = Struct_1(vec4<u32>(~global0.a.a.x, arg_0.a.c.x, global0.a.a.x, 94588u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, 1568f)))), ~_wgslsmith_mod_vec4_u32(select(max(vec4<u32>(4294967295u, u_input.b.x, 1u, 35172u), vec4<u32>(37197u, arg_0.a.a.x, 88419u, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(7455u, global0.a.e.x, var_1.a.c.x, arg_0.a.e.x), vec4<u32>(4294967295u, 24378u, 0u, global0.a.e.x)), any(var_0.zy)), global0.a.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1117f, 1748f)) * vec3<f32>(730f, -753f, global0.a.d.x)) + _wgslsmith_f_op_vec3_f32(round(global0.a.d))))), vec2<u32>(38558u ^ ~u_input.b.x, _wgslsmith_mult_u32(~arg_0.a.a.x, 4294967295u ^ global0.a.e.x) | ~_wgslsmith_sub_u32(u_input.b.x, var_1.a.c.x)));
    global3 = var_1.a.d;
    return -160f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(global0.a);
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_add_u32(0u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, u_input.b.x), vec2<u32>(arg_3.x, arg_2.a.c.x))), vec3<u32>(_wgslsmith_mod_u32(47271u, arg_2.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4084u), u_input.b.yz), ~75844u)) ^ ~_wgslsmith_dot_vec3_u32(global0.a.c.xww, select(arg_2.a.c.wzx, vec3<u32>(arg_2.a.a.x, arg_2.a.a.x, global0.a.a.x), vec3<bool>(false, false, true))));
    var var_2 = global0.a;
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 1u, 53650u, arg_2.a.e.x), arg_2.a.c, true), vec4<u32>(~arg_3.x, u_input.b.x, 4294967295u, arg_2.a.e.x)), _wgslsmith_f_op_f32(arg_0 * var_0.a.d.x), ~_wgslsmith_mod_vec4_u32(global0.a.a, vec4<u32>(global0.a.e.x, 8732u, u_input.b.x, var_0.a.c.x)), global0.a.d, _wgslsmith_mod_vec2_u32(~(~global0.a.e), vec2<u32>(20112u, countOneBits(1u)))));
    var var_3 = Struct_1(global0.a.a, _wgslsmith_f_op_f32(step(arg_2.a.d.x, _wgslsmith_f_op_f32(-arg_0))), arg_2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2652f, -1000f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a.d)), vec3<f32>(var_2.d.x, -1221f, arg_2.a.b), var_2.a.x >= 0u)))), vec2<u32>(~4918u, arg_3.x));
    return _wgslsmith_clamp_i32(1i, -19818i, ~min(u_input.a.x ^ u_input.a.x, max(54116i, -56167i)) | (~(~u_input.a.x) ^ ~1i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global3 = vec3<f32>(-714f, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_0 = arg_0;
    global2 = array<Struct_1, 31>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, arg_1.c.x, arg_0.a.x, 14810u), vec4<u32>(9257u, global0.a.a.x, 0u, 1u), vec4<u32>(65567u, arg_1.e.x, global0.a.a.x, global0.a.c.x)), vec4<u32>(u_input.b.x, global0.a.e.x, arg_0.a.x, arg_0.e.x)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global0.a.e.x, 0u, 1u, 0u)), firstTrailingBit(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, -504f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(468f, arg_1.b)), _wgslsmith_f_op_f32(-508f - -1560f)))), arg_0.a, arg_0.d, global0.a.a.xz));
    let var_2 = global0.a;
    return func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<u32>(arg_0.c.x, 0u, var_1.a.e.x, arg_0.e.x), arg_0.d.x, vec4<u32>(25009u, var_2.a.x, 34495u, 11027u), var_1.a.d, vec2<u32>(38787u, 28621u))), var_2.d.x)) - _wgslsmith_f_op_f32(max(global0.a.b, 844f)))))), _wgslsmith_f_op_f32(round(-1012f)), Struct_2(Struct_1(~_wgslsmith_add_vec4_u32(u_input.b, var_1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -158f), global0.a.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, var_2.d.x, 252f) - var_2.d))), firstTrailingBit(min(vec2<u32>(1u, var_2.c.x), vec2<u32>(40497u, 0u))))), vec2<u32>(select(24484u, 4294967295u, !(arg_0.e.x > 97223u)), arg_1.a.x & ~global0.a.e.x));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    global3 = global0.a.d;
    let var_0 = Struct_2(global0.a);
    var var_1 = (_wgslsmith_mod_vec2_i32(u_input.a.yy ^ u_input.a.zy, select(vec2<i32>(arg_0, -32478i), arg_2.zz, select(vec2<bool>(true, false), vec2<bool>(false, false), true))) >> (_wgslsmith_mod_vec2_u32(arg_3.a.c.yw, ~vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u))) ^ (_wgslsmith_add_vec2_i32(u_input.a.zy, arg_2.zy) & max(arg_2.wz, vec2<i32>(countOneBits(23206i), ~(-35281i))));
    global0 = Struct_2(global0.a);
    let var_2 = var_0;
    return Struct_1(global0.a.c, -1664f, ~vec4<u32>(countOneBits(~var_0.a.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.c.x, 1u), firstLeadingBit(arg_3.a.c.x)), _wgslsmith_div_u32(6834u, arg_3.a.c.x) ^ 1u, global0.a.c.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) * _wgslsmith_f_op_f32(trunc(756f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-global3.x), select(true, true, false))))), ~_wgslsmith_clamp_vec2_u32(var_2.a.c.zx, countOneBits(max(var_0.a.a.yy, vec2<u32>(0u, 0u))), select(var_2.a.c.xy & vec2<u32>(global0.a.a.x, var_0.a.e.x), select(var_2.a.a.xz, var_0.a.a.zw, true), vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, select(true, (25740u >> (global0.a.c.x % 32u)) != u_input.b.x, false)));
    let var_1 = func_5(_wgslsmith_dot_vec2_i32(select(abs(-vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.zy, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), u_input.a.xx), -444f, vec4<i32>(-1i, u_input.a.x, u_input.a.x, countOneBits(func_1(Struct_1(vec4<u32>(31698u, 17595u, 88599u, u_input.b.x), -2269f, u_input.b, vec3<f32>(-711f, 377f, 148f), vec2<u32>(global0.a.e.x, global0.a.e.x)), global0.a))) >> (~(~global0.a.c) % vec4<u32>(32u)), Struct_2(Struct_1(u_input.b, _wgslsmith_div_f32(global3.x, -1436f), vec4<u32>(abs(1u), 70176u, 3199u, select(u_input.b.x, global0.a.c.x, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(global0.a.d)))), firstLeadingBit(vec2<u32>(1u, u_input.b.x) ^ global0.a.a.yw))));
    let var_2 = u_input.a;
    var var_3 = func_5(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -2147483647i, 7801i, 4311i), global1[_wgslsmith_index_u32(global0.a.e.x, 16u)]) & max(select(1511i, u_input.a.x, true), func_4(-1000f, 1480f, Struct_2(Struct_1(u_input.b, 1097f, global0.a.a, vec3<f32>(var_1.d.x, -1128f, -921f), u_input.b.wy)), vec2<u32>(65633u, var_1.a.x))), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), -2038f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xw, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.c.yw, ~u_input.b.xz), ~global0.a.e)), 16u)], Struct_2(var_1));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) + -947f)), _wgslsmith_f_op_f32(min(func_5(~u_input.a.x, _wgslsmith_f_op_f32(-global3.x), countOneBits(global1[_wgslsmith_index_u32(7689u, 16u)]), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 31u)])).d.x, _wgslsmith_f_op_f32(-var_1.b))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1773f), -988f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))));
    var var_5 = Struct_1(~vec4<u32>(var_1.c.x, 44167u, firstLeadingBit(global0.a.c.x), global0.a.e.x), 294f, abs(vec4<u32>(min(4395u, ~var_1.a.x), 4294967295u, ~(~var_1.e.x), firstLeadingBit(global0.a.c.x))), global0.a.d, select(~reverseBits(vec2<u32>(17045u, 4294967295u)), ~var_3.e, select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec2<bool>(false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_6 = -(~(-(~68763i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~vec3<i32>(min(-32671i, 74039i), reverseBits(var_6), ~var_2.x), var_2), 720f);
}

