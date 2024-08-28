struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), false, 28413u, 107106u);

var<private> global1: f32 = -165f;

var<private> global2: array<Struct_2, 17>;

var<private> global3: array<vec2<u32>, 29>;

var<private> global4: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<bool>(true, true), true, 87810u, 4294967295u), Struct_2(vec2<bool>(false, false), true, 1u, 4294967295u), Struct_2(vec2<bool>(false, false), true, 69308u, 5512u), Struct_2(vec2<bool>(false, false), false, 60783u, 4349u), Struct_2(vec2<bool>(true, true), true, 4294967295u, 0u), Struct_2(vec2<bool>(true, true), true, 1u, 87240u), Struct_2(vec2<bool>(true, true), true, 4294967295u, 40958u), Struct_2(vec2<bool>(true, true), true, 99895u, 0u), Struct_2(vec2<bool>(true, true), true, 4294967295u, 0u), Struct_2(vec2<bool>(false, false), true, 4294967295u, 0u), Struct_2(vec2<bool>(true, false), true, 26202u, 4294967295u), Struct_2(vec2<bool>(true, false), false, 6249u, 21576u), Struct_2(vec2<bool>(false, true), true, 0u, 4294967295u), Struct_2(vec2<bool>(true, false), true, 4294967295u, 32933u), Struct_2(vec2<bool>(true, true), true, 4294967295u, 31706u), Struct_2(vec2<bool>(true, false), false, 0u, 39454u), Struct_2(vec2<bool>(true, false), false, 4294967295u, 6647u), Struct_2(vec2<bool>(false, false), false, 0u, 4294967295u), Struct_2(vec2<bool>(true, true), false, 1u, 16209u), Struct_2(vec2<bool>(false, true), true, 22265u, 72299u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-933f, 316f, -834f, 1897f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, -589f, 907f, -521f))), vec4<f32>(_wgslsmith_f_op_f32(-418f * 1000f), -1230f, 697f, -605f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-640f, -596f, -1029f, -699f), vec4<f32>(-871f, -1240f, -1000f, 220f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(360f, 1000f, -1912f, -447f) * vec4<f32>(-377f, -704f, 1636f, 577f))))) * vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-900f * -1185f)), _wgslsmith_div_f32(-1928f, -2030f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1238f - 323f) * _wgslsmith_f_op_f32(step(-851f, -824f))), -1000f)));
    global0 = global2[_wgslsmith_index_u32(~(~countOneBits(select(u_input.a.x, ~26250u, false))), 17u)];
    var var_1 = 330f;
    global3 = array<vec2<u32>, 29>();
    let var_2 = Struct_1(vec4<bool>(any(!select(global0.a, global0.a, false)), global0.a.x, true, true), arg_0, _wgslsmith_f_op_vec2_f32(-var_0.yy), u_input.b);
    return vec4<bool>(global0.a.x, true, all(!vec4<bool>(all(var_2.a.yww), true, !var_2.a.x, all(vec4<bool>(global0.b, false, true, global0.a.x)))), var_2.a.x);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(105f + -836f), _wgslsmith_f_op_f32(round(-337f)), -529f)))));
    var var_1 = Struct_1(!select(func_3(vec4<i32>(arg_1, u_input.b, 21942i, arg_1)), !select(vec4<bool>(true, global0.b, global0.b, arg_2), vec4<bool>(global0.b, arg_2, false, global0.a.x), arg_2), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, -2147483647i), vec4<i32>(40785i, arg_1, arg_1, -585i)))), vec4<i32>(_wgslsmith_sub_i32(1i, u_input.b), firstTrailingBit(-arg_1), u_input.b, arg_1) ^ -firstTrailingBit(abs(vec4<i32>(-3982i, arg_1, arg_1, u_input.b))), _wgslsmith_f_op_vec2_f32(-var_0.yy), u_input.b >> (((countOneBits(u_input.a.x) & max(global0.c, u_input.a.x)) ^ reverseBits(countOneBits(u_input.a.x))) % 32u));
    var var_2 = ~1i;
    var_2 = 42775i;
    var_1 = Struct_1(var_1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -arg_1, u_input.b, ~(-1i)), var_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-16255i, -2147483647i, u_input.b, -1i), vec4<i32>(2147483647i, -53202i, 2147483647i, 0i)) | vec4<i32>(var_1.d, 77243i, -52779i, -1i)), var_1.b), _wgslsmith_f_op_vec2_f32(select(var_0.xz, vec2<f32>(326f, var_1.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(abs(var_0.x)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -972f))), 59182i | _wgslsmith_mod_i32(arg_1, _wgslsmith_mult_i32(firstLeadingBit(var_1.d), firstTrailingBit(0i))));
    return select(func_3(~(-var_1.b)).wz, var_1.a.xz, true);
}

fn func_1(arg_0: u32) -> Struct_2 {
    global4 = array<Struct_2, 20>();
    var var_0 = u_input.a.x;
    global0 = Struct_2(func_2(false, ~max(-2147483647i, -1i ^ u_input.b), !select(global0.b, false, true)), all(func_3(vec4<i32>(1i, u_input.b, u_input.b, -u_input.b))), ~25005u, arg_0);
    let var_1 = Struct_1(vec4<bool>(false, false, global0.a.x, func_2(global0.a.x, -reverseBits(1i), global0.b).x), _wgslsmith_mult_vec4_i32(~select(countOneBits(vec4<i32>(-1i, 2147483647i, u_input.b, 20931i)), select(vec4<i32>(u_input.b, u_input.b, 0i, 1i), vec4<i32>(1i, u_input.b, -1i, u_input.b), vec4<bool>(true, global0.a.x, global0.a.x, false)), global0.b), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)), vec4<i32>(-43188i, -49798i, -51814i, -1i)), abs(vec4<i32>(u_input.b, -49100i, -20260i, u_input.b) >> (vec4<u32>(0u, 14196u, 15372u, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(u_input.b, -1i, u_input.b, -4514i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1080f, 549f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), 832f))), ~(-52767i));
    global4 = array<Struct_2, 20>();
    return Struct_2(select(!global0.a, vec2<bool>(!var_1.a.x, var_1.a.x), select(!(!vec2<bool>(global0.b, true)), !var_1.a.zz, !global0.b)), var_1.a.x, ~(~global0.d), firstTrailingBit(select(~(~global0.d), ~(arg_0 & 46334u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) > 78417u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = !global0.b;
    var var_1 = Struct_1(select(!select(vec4<bool>(false, true, arg_0.a.x, true), func_3(vec4<i32>(u_input.b, 13906i, 0i, u_input.b)), !vec4<bool>(arg_0.b, false, false, false)), select(!func_3(vec4<i32>(-1i, -22936i, 1i, arg_1)), vec4<bool>(true, true, true, true), all(!vec4<bool>(arg_2.x, true, true, true))), !(!vec4<bool>(false, arg_0.b, arg_0.a.x, arg_0.a.x))), max(~max(vec4<i32>(u_input.b, 1i, arg_1, u_input.b), firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, 1i, 0i))), firstTrailingBit(~vec4<i32>(-72523i, -2550i, arg_1, arg_1))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(264f - -769f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1066f, 1195f), vec2<f32>(141f, 532f)))), vec2<f32>(1f, 1f)), firstLeadingBit(countOneBits(-2147483647i)));
    let var_2 = vec4<u32>(4294967295u | ~_wgslsmith_mult_u32(global0.c, global0.d), ~4294967295u, ~_wgslsmith_div_u32(29538u, firstLeadingBit(~global0.c)), 4294967295u);
    var_1 = Struct_1(vec4<bool>(false, !global0.a.x, func_1(~(~54955u)).a.x, true), -abs(var_1.b) >> (vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_0.c, arg_0.d, var_2.x), var_2), var_2.x ^ ~global0.d, 28048u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, 276f), vec2<f32>(-2564f, 240f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1355f, var_1.c.x)))))), arg_1 >> (~0u % 32u));
    global1 = 224f;
    return Struct_1(!(!vec4<bool>(var_1.a.x, func_1(u_input.a.x).a.x, var_1.a.x, global0.a.x)), -firstTrailingBit(firstTrailingBit(~vec4<i32>(var_1.b.x, -14255i, -31809i, arg_1))), var_1.c, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(u_input.a.x), ~1i, !(!(!select(vec2<bool>(false, true), vec2<bool>(global0.b, global0.a.x), false))));
    global1 = 1766f;
    var var_1 = Struct_2(global0.a, true, firstLeadingBit(firstLeadingBit(~u_input.a.x)) | ~4294967295u, u_input.a.x);
    global4 = array<Struct_2, 20>();
    global2 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -2256f, 710f)) - vec3<f32>(var_0.c.x, 1199f, var_0.c.x)) + vec3<f32>(_wgslsmith_div_f32(1041f, var_0.c.x), 867f, _wgslsmith_f_op_f32(trunc(-722f))))), vec4<u32>(max(~1u, var_1.c), func_1(~36364u).d, global0.c, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 14356u, 1u)), firstLeadingBit(vec3<u32>(0u, 11620u, 25334u))) ^ ~var_1.d), ~(firstTrailingBit(countOneBits(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b))) & ~vec4<i32>(u_input.b, -2147483647i, u_input.b, -1i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c.x, 448f), _wgslsmith_div_f32(-1426f, -1111f)))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(176f * -102f)));
}

