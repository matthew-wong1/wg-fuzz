struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(33562u, 102101u), vec2<u32>(57808u, 0u), vec2<u32>(1u, 85985u), vec2<u32>(41184u, 0u), vec2<u32>(40242u, 1u), vec2<u32>(72587u, 1u), vec2<u32>(54455u, 1u), vec2<u32>(0u, 75171u), vec2<u32>(1u, 38846u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(44666u, 0u), vec2<u32>(1u, 12588u), vec2<u32>(40665u, 27071u), vec2<u32>(77307u, 2027u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 73017u), vec2<u32>(1u, 44869u), vec2<u32>(23644u, 4294967295u), vec2<u32>(27922u, 1u), vec2<u32>(0u, 25866u), vec2<u32>(41833u, 18668u), vec2<u32>(0u, 23333u), vec2<u32>(20184u, 32744u), vec2<u32>(0u, 7593u), vec2<u32>(67622u, 1u));

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> bool {
    global3 = ~select(min(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global4.b, -1i), global1.x), ~countOneBits(-29383i)), global4.b, 6369u > _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a.x, u_input.a.x, global0.x), select(vec4<u32>(global0.x, u_input.a.x, 1u, 1u), vec4<u32>(4294967295u, global0.x, 1u, global0.x), arg_0)));
    var var_0 = select(vec4<i32>(-54580i << (~max(55132u, global0.x) % 32u), -1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.x, global4.b, global1.x, -2147483647i), vec4<i32>(global1.x, global4.b, global1.x, global1.x), global4.d.x) | firstTrailingBit(vec4<i32>(global1.x, 0i, global4.b, global1.x)), ~(vec4<i32>(global1.x, -39794i, global1.x, global4.b) | vec4<i32>(32538i, global4.b, 0i, global1.x))), firstLeadingBit(min(global1.x, global4.b)) << (u_input.a.x % 32u)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i >> (u_input.a.x % 32u), select(global4.b, global1.x, false), global4.b, global4.b), ~vec4<i32>(0i, -1i, -2147483647i, -17714i))), global4.c);
    var var_1 = global4.d.x;
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1085f, global4.a.x, -707f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(406f, global4.a.x, global4.a.x), global4.a)) + _wgslsmith_f_op_vec3_f32(global4.a - global4.a)))), select(vec3<bool>(global4.d.x, all(global4.c), true), select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(arg_0, true, false), global4.d.zzw, vec3<bool>(true, false, arg_0)), global4.c.xzz), !all(vec2<bool>(global4.c.x, false))))), ~global1.x, !select(select(vec4<bool>(false, false, arg_0, global4.d.x), vec4<bool>(arg_0, true, arg_0, false), !vec4<bool>(arg_0, global4.d.x, true, arg_0)), select(vec4<bool>(false, arg_0, false, global4.d.x), global4.d, select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(global4.c.x, arg_0, true, true), global4.c.x)), !any(global4.d)), select(!select(!global4.d, vec4<bool>(false, false, false, global4.c.x), true), global4.c, !select(vec4<bool>(false, global4.c.x, true, true), select(vec4<bool>(false, true, global4.c.x, arg_0), global4.d, vec4<bool>(global4.d.x, global4.c.x, false, arg_0)), !global4.c.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global4.a.x)), _wgslsmith_f_op_f32(min(global4.a.x, global4.a.x)), 1757f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1108f, -1494f, global4.a.x), global4.a))))), firstLeadingBit(0i), global4.c, vec4<bool>(global4.d.x, !select(all(global4.d), any(global4.c.zz), any(global4.c)), true, true));
    return select(false, true, true);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = max(min(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(0u, u_input.a.x)), vec2<u32>(_wgslsmith_add_u32(global0.x, u_input.a.x), ~global0.x)), ~1u), global0.x);
    global3 = -_wgslsmith_add_i32(arg_1, ~(-2147483647i));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, _wgslsmith_f_op_f32(round(-388f)), _wgslsmith_f_op_f32(abs(arg_0.a.d.a.x))));
    global2 = array<vec2<u32>, 26>();
    return _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, arg_0.a.e), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, global0.x, arg_3), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, var_0, 0u, 83658u), select(vec4<u32>(var_0, u_input.a.x, u_input.a.x, 1u), vec4<u32>(arg_3, var_0, 52055u, 4294967295u), true))));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec2<u32>(firstLeadingBit(4294967295u), func_4(Struct_4(Struct_2(reverseBits(global1.yzx), countOneBits(vec4<i32>(global1.x, -41920i, 0i, global4.b)), _wgslsmith_sub_i32(global4.b, 33483i), Struct_1(vec3<f32>(global4.a.x, -1142f, -804f), global4.b, vec4<bool>(global4.d.x, global4.c.x, false, true), vec4<bool>(global4.c.x, global4.c.x, global4.c.x, true)), u_input.a.x), Struct_3(Struct_1(global4.a, -14821i, vec4<bool>(true, false, true, global4.c.x), global4.c), global4.d.x, _wgslsmith_f_op_vec3_f32(exp2(global4.a))), vec4<bool>(func_3(global4.d.x), any(global4.c.wz), all(vec3<bool>(false, global4.c.x, false)), 0i != global1.x)), global1.x, Struct_1(global4.a, global4.b, select(vec4<bool>(false, false, global4.d.x, global4.d.x), vec4<bool>(global4.d.x, global4.d.x, false, global4.d.x), select(global4.d, global4.d, global4.d)), global4.d), ~(4609u >> (1u % 32u))));
    var_0 = global2[_wgslsmith_index_u32(global0.x, 26u)];
    let var_1 = _wgslsmith_f_op_f32(-global4.a.x);
    var var_2 = Struct_4(Struct_2(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(global1.x, 0i, 1i)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(global1.www, vec3<i32>(global1.x, -1829i, 2147483647i), vec3<i32>(1i, global1.x, global1.x)))), vec4<i32>(-1i, i32(-1i) * -21315i, -1i >> (select(31538u, u_input.a.x, global4.c.x) % 32u), ~reverseBits(-543i)), (global4.b | global1.x) >> (15892u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, global4.a.x, -487f) - global4.a) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-533f, var_1, global4.a.x), vec3<f32>(766f, var_1, var_1)))), -global1.x, global4.d, global4.d), ~(~global0.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, global4.a.x, -979f)), _wgslsmith_f_op_vec3_f32(-global4.a))), -_wgslsmith_mult_i32(global1.x, global4.b), select(select(vec4<bool>(global4.c.x, false, false, global4.c.x), global4.c, true), vec4<bool>(global4.d.x, global4.c.x, true, false), true & global4.d.x), global4.c), any(!global4.c.xyx), global4.a), vec4<bool>(all(vec2<bool>(all(global4.d), global4.c.x && true)), true, global4.c.x, global4.d.x));
    var var_3 = global4.c;
    return vec3<u32>(reverseBits(~abs(u_input.a.x)), 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, ~9188u, ~27852u), select(vec3<u32>(u_input.a.x, 35452u, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 33550u, 1u), vec3<u32>(var_0.x, 1u, u_input.a.x), vec3<u32>(3814u, var_2.a.e, global0.x)), !var_3.xxx)));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(~(_wgslsmith_div_vec3_i32(vec3<i32>(-4395i, global4.b, arg_0.a.b), global1.yzx) << (func_2() % vec3<u32>(32u))), vec4<i32>(global1.x, -126i, _wgslsmith_mult_i32(-20522i, global4.b) & 0i, global1.x), reverseBits(23184i << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a.x, global0.x), vec3<u32>(22738u, u_input.a.x, global0.x)) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, -708f, 937f)), ~(-36808i), vec4<bool>(global4.c.x || arg_0.a.d.x, true, true && global4.d.x, all(vec2<bool>(true, arg_0.b))), !(!vec4<bool>(global4.c.x, false, false, arg_0.b))), global0.x), arg_0, !(!arg_0.a.d));
    global3 = -arg_0.a.b;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.d.a.x, var_0.a.d.a.x, arg_0.c.x)))), global1.x, select(arg_0.a.d, select(var_0.c, global4.d, global4.d.x & var_0.b.b), false), global4.d), u_input.a.x >= ~(~(~0u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(1542f)), _wgslsmith_f_op_f32(exp2(global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-654f, var_0.a.d.a.x)) + 675f)), vec3<f32>(1913f, var_0.a.d.a.x, var_0.b.c.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, 632f, 215f), vec3<f32>(1518f, global4.a.x, -182f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.a))), _wgslsmith_div_i32((_wgslsmith_sub_i32(-21288i, global4.b) << ((global0.x ^ var_0.a.e) % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.e, var_0.a.e), 50933u) % 32u), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.x, 0i), global1.yw), global1.wy >> (vec2<u32>(global0.x, 72818u) % vec2<u32>(32u))))), vec4<bool>(select(true, var_0.a.d.d.x, 1i > min(-1i, var_1.a.b)), reverseBits(2147483647i) < (-global1.x & (global1.x & 1i)), !arg_0.b & !arg_0.a.c.x, false), select(vec4<bool>(true, arg_0.b, !all(arg_0.a.c), !(!var_0.b.b)), select(var_1.a.c, global4.c, true), select(vec4<bool>(any(global4.d), any(vec3<bool>(arg_0.b, true, global4.d.x)), arg_0.a.d.x || true, false & global4.c.x), select(!var_1.a.d, arg_0.a.d, vec4<bool>(arg_0.b, var_1.a.d.x, global4.c.x, false)), vec4<bool>(false, false, all(global4.d), true))));
    global4 = var_0.b.a;
    return Struct_2(vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(0i, 3705i), global1.x), global1.x, _wgslsmith_dot_vec3_i32(var_0.a.b.wzw, ~vec3<i32>(var_1.a.b, var_2.b, -26543i)) << (abs(~1u) % 32u)), -(~vec4<i32>(_wgslsmith_mult_i32(2147483647i, var_0.a.a.x), var_2.b, -var_1.a.b, 1i)), ~(~countOneBits(3457i)), arg_0.a, _wgslsmith_mult_u32(var_0.a.e, ~_wgslsmith_mod_u32(~33571u, 84148u)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_2 {
    global1 = min(countOneBits(arg_2.a.b), arg_2.a.b);
    global2 = array<vec2<u32>, 26>();
    global0 = ~(~(~vec3<u32>(104498u, ~arg_2.a.e, ~u_input.a.x)));
    global4 = func_1(arg_2.b).d;
    var var_0 = 27313i;
    return arg_0.a;
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> Struct_1 {
    global2 = array<vec2<u32>, 26>();
    global2 = array<vec2<u32>, 26>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1, ~u_input.a.x), 37904u), 12332u), vec2<u32>(~1u, abs(~func_1(Struct_3(arg_0.a.d, global4.d.x, global4.a)).e)));
    var var_1 = max(vec2<u32>(~abs(arg_2), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 16208u), vec2<u32>(u_input.a.x, arg_1)), 1668u, arg_0.b.b)), vec2<u32>(arg_1, abs(1u))) << (global0.xy % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d.a.x, func_5(Struct_4(Struct_2(arg_0.a.b.wwz, arg_0.a.b, global1.x, arg_0.b.a, 0u), Struct_3(Struct_1(arg_0.a.d.a, arg_0.b.a.b, global4.c, vec4<bool>(arg_0.c.x, false, global4.d.x, false)), true, vec3<f32>(-302f, 339f, -2318f)), vec4<bool>(false, arg_0.c.x, arg_0.b.a.d.x, arg_0.c.x)), arg_0.b.a.c, arg_0).d.a.x)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.a.d.a.xz), arg_0.b.a.a.zx))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.c.x), -373f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, global4.a.x)))), !vec2<bool>(global4.d.x, global4.d.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(global4.a * vec3<f32>(arg_0.b.a.a.x, -1016f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.a.x * 1190f))))), abs(_wgslsmith_sub_i32(~global1.x, -(~(-1i)))), arg_0.a.d.c, !global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_6(Struct_4(func_5(Struct_4(func_1(Struct_3(Struct_1(vec3<f32>(931f, global4.a.x, -995f), global1.x, global4.c, global4.c), global4.d.x, vec3<f32>(-1239f, -562f, 278f))), Struct_3(Struct_1(vec3<f32>(914f, global4.a.x, -1000f), -2147483647i, global4.d, global4.c), false, global4.a), vec4<bool>(global4.c.x, global4.d.x, true, global4.c.x)), global4.c, Struct_4(Struct_2(global1.wxx, vec4<i32>(global1.x, -51514i, global4.b, global4.b), global1.x, Struct_1(vec3<f32>(-233f, global4.a.x, global4.a.x), global1.x, vec4<bool>(false, global4.d.x, true, global4.d.x), vec4<bool>(true, global4.d.x, global4.c.x, true)), 45178u), Struct_3(Struct_1(vec3<f32>(global4.a.x, -1177f, -513f), 2147483647i, vec4<bool>(global4.d.x, global4.d.x, false, global4.c.x), global4.d), global4.d.x, vec3<f32>(1000f, -320f, -549f)), global4.d)), Struct_3(func_5(Struct_4(Struct_2(vec3<i32>(global1.x, -2147483647i, global1.x), vec4<i32>(global4.b, -3343i, 1026i, global1.x), 0i, Struct_1(global4.a, 1i, vec4<bool>(global4.c.x, true, global4.d.x, false), global4.c), global0.x), Struct_3(Struct_1(vec3<f32>(global4.a.x, global4.a.x, global4.a.x), global1.x, global4.d, global4.d), false, global4.a), vec4<bool>(global4.c.x, global4.d.x, true, global4.d.x)), global4.d, Struct_4(Struct_2(vec3<i32>(global4.b, global1.x, -11714i), vec4<i32>(-52150i, global1.x, 1i, -26377i), global4.b, Struct_1(global4.a, global4.b, vec4<bool>(global4.c.x, true, global4.c.x, global4.c.x), global4.c), 1u), Struct_3(Struct_1(vec3<f32>(-1008f, global4.a.x, global4.a.x), -35958i, vec4<bool>(global4.c.x, false, true, false), vec4<bool>(global4.d.x, false, true, global4.c.x)), false, global4.a), vec4<bool>(true, global4.d.x, true, global4.d.x))).d, global4.b <= _wgslsmith_add_i32(2147483647i, global4.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a))), func_1(Struct_3(func_5(Struct_4(Struct_2(vec3<i32>(54479i, -2147483647i, global1.x), vec4<i32>(global4.b, global4.b, 33012i, -1i), 55147i, Struct_1(global4.a, global4.b, vec4<bool>(global4.c.x, false, global4.d.x, true), global4.d), u_input.a.x), Struct_3(Struct_1(vec3<f32>(global4.a.x, global4.a.x, global4.a.x), -4474i, global4.c, global4.d), global4.c.x, vec3<f32>(1198f, 1000f, -1000f)), vec4<bool>(false, false, global4.d.x, global4.c.x)), global4.c, Struct_4(Struct_2(vec3<i32>(-2147483647i, -1i, global1.x), vec4<i32>(39473i, -6044i, global4.b, global1.x), global4.b, Struct_1(global4.a, global4.b, global4.c, global4.c), 19523u), Struct_3(Struct_1(global4.a, global1.x, vec4<bool>(true, false, true, global4.c.x), vec4<bool>(true, true, false, true)), global4.d.x, global4.a), global4.c)).d, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1663f, -119f, global4.a.x)))).d.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x) & vec3<u32>(global0.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, global0.x, 47778u) >> (vec3<u32>(19532u, 54904u, 4294967295u) % vec3<u32>(32u)))) & _wgslsmith_div_u32(~countOneBits(4294967295u), ~(~67121u)), min(_wgslsmith_add_u32(reverseBits(global0.x ^ global0.x), ~(~global0.x)), global0.x >> (~global0.x % 32u)));
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global4.a))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.a.x, 367f, global4.a.x), global4.a)), _wgslsmith_f_op_vec3_f32(-global4.a)))), !func_1(Struct_3(func_6(Struct_4(Struct_2(global1.xwy, vec4<i32>(52713i, global1.x, global4.b, -16465i), global1.x, Struct_1(global4.a, 2147483647i, vec4<bool>(true, global4.c.x, global4.d.x, global4.c.x), vec4<bool>(global4.d.x, false, true, false)), 738u), Struct_3(Struct_1(global4.a, global1.x, global4.d, vec4<bool>(global4.c.x, global4.d.x, global4.d.x, global4.d.x)), true, vec3<f32>(global4.a.x, global4.a.x, 1126f)), global4.d), global0.x, global0.x), global4.c.x, _wgslsmith_f_op_vec3_f32(-global4.a))).d.c.wwx));
    global3 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, global4.b, 18865i, global1.x) << (vec4<u32>(20748u, 1u, 47025u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-40354i, -2147483647i, global1.x, global1.x), vec4<i32>(global1.x, -51993i, 2147483647i, global1.x)), vec4<i32>(global4.b, 32701i, global1.x, global1.x) | vec4<i32>(global1.x, -1i, -64351i, 2147483647i)))), ~(-19328i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4.a.yy)) + _wgslsmith_f_op_vec2_f32(var_0.zy * global4.a.xy))))), global4.b);
}

