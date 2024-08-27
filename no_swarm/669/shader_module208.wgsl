struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49256u;

var<private> global1: array<i32, 15> = array<i32, 15>(29896i, -25037i, -63630i, 1i, 0i, 15026i, 17089i, 1i, 1i, 56256i, 1i, 0i, 31059i, 1i, -1i);

var<private> global2: Struct_3 = Struct_3(true, Struct_2(true), Struct_2(false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    let var_0 = Struct_4(~vec4<u32>(0u, ~(~4294967295u), firstLeadingBit(min(49918u, 62791u)), 11511u));
    var var_1 = var_0.a.zyy;
    global2 = Struct_3(all(select(vec2<bool>(global2.a, true), vec2<bool>(global2.c.a, true), !select(vec2<bool>(false, global2.c.a), vec2<bool>(false, global2.a), true))), Struct_2(global2.a), global2.b);
    return var_1.yz;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    global0 = 14966u;
    global0 = arg_0.x;
    global0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, 27251u), arg_0.x | 79584u), arg_0.x), 0u);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-575f, arg_1)))))));
    global1 = array<i32, 15>();
    return Struct_5(max(_wgslsmith_clamp_vec2_u32(arg_0.zz, vec2<u32>(arg_0.x, arg_0.x), arg_0.zz), func_3()) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(53291u, _wgslsmith_sub_u32(41375u, arg_0.x)), arg_0.xx), arg_1, !select(!select(vec4<bool>(global2.c.a, arg_2.a, global2.b.a, true), vec4<bool>(arg_2.a, false, true, true), vec4<bool>(arg_2.a, true, true, false)), !select(vec4<bool>(global2.c.a, false, global2.b.a, arg_2.a), vec4<bool>(false, true, global2.c.a, global2.b.a), false), true));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_5(vec2<u32>(_wgslsmith_mod_u32(0u, countOneBits(arg_1.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 72278u, 0u, 79020u), vec4<u32>(4294967295u, arg_1.a.x, 50464u, arg_1.a.x)) % 32u)), arg_2.x), _wgslsmith_f_op_f32(arg_1.b - func_2(arg_2.xwy, 503f, global2.b).b), !select(vec4<bool>(false, !global2.a, true, global2.a), vec4<bool>(false, select(true, global2.c.a, false), global2.c.a, true), vec4<bool>(true, true, global2.b.a & arg_1.c.x, true)));
    var var_1 = abs(_wgslsmith_div_i32(-50994i, ~39269i));
    var_1 = _wgslsmith_dot_vec4_i32(-max(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_1.a.x, 15u)], u_input.a, global1[_wgslsmith_index_u32(var_0.a.x, 15u)]) << (arg_2 % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 15u)], arg_0, global1[_wgslsmith_index_u32(var_0.a.x, 15u)], 1i))) | vec4<i32>(1i, ~firstTrailingBit(14091i), ~2147483647i, 2147483647i), -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.a, u_input.a, 26188i), vec4<i32>(global1[_wgslsmith_index_u32(71351u, 15u)], 1i, global1[_wgslsmith_index_u32(var_0.a.x, 15u)], global1[_wgslsmith_index_u32(var_0.a.x, 15u)])))));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(~(arg_2 | arg_2)), reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.a.x, arg_2.x, 4294967295u, arg_1.a.x), ~vec4<u32>(4294967295u, 46534u, arg_2.x, 0u)))), 15u)];
    var_1 = select(-28315i, -_wgslsmith_add_i32(1i, 0i), !select(true, false, true));
    return Struct_4(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(arg_2), arg_2 & vec4<u32>(4294967295u, arg_2.x, 4294967295u, arg_1.a.x)), _wgslsmith_add_vec4_u32(arg_2, vec4<u32>(arg_2.x, arg_2.x, 16128u, arg_1.a.x))), abs(vec4<u32>(60466u | arg_2.x, countOneBits(arg_1.a.x), 4845u, ~88185u))));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global0 = ~firstLeadingBit(min(func_4(abs(global1[_wgslsmith_index_u32(arg_0.a.x, 15u)]), func_2(vec3<u32>(22458u, arg_0.a.x, 13320u), -258f, global2.b), ~arg_0.a).a.x, 24965u));
    let var_0 = Struct_3(global2.a, global2.c, Struct_2(true));
    var var_1 = vec4<bool>(!(!(!global2.b.a)), false, global2.b.a, true & !var_0.c.a);
    var var_2 = Struct_2(global2.a);
    global0 = arg_0.a.x;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    let var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, -1359f, -338f, 961f) + vec4<f32>(1181f, 320f, -1000f, -768f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1686f, -625f, -475f, 1030f))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, -209f, -946f, -384f) + vec4<f32>(-2342f, -107f, 521f, -143f)))))));
    var var_2 = global2.b;
    var var_3 = global2.c;
    var var_4 = false;
    return func_5(func_4(2147483647i, func_2(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 97494u, 109113u))), var_1.x, Struct_2(!var_3.a)), ~abs(~vec4<u32>(658u, 1u, 16930u, 28966u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(firstLeadingBit(reverseBits(1i)));
    var var_1 = func_1(vec3<i32>(~(-9098i), _wgslsmith_mod_i32(-max(global1[_wgslsmith_index_u32(4294967295u, 15u)], var_0), var_0), var_0), false);
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(countOneBits(4294967295u), func_3().x, ~1u, 1u), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 2420u, 22921u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, ~0u, firstLeadingBit(max(37487u, 1746u)) >> (1u % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(32447u, 4294967295u, 32274u)))));
    global1 = array<i32, 15>();
    var var_3 = !(!(!(!func_2(vec3<u32>(var_2.x, var_2.x, 61563u), -562f, var_1.c).c.yzw)));
    var var_4 = 0u;
    let var_5 = Struct_4(~vec4<u32>(1u, var_2.x, min(60256u, var_2.x) >> (_wgslsmith_add_u32(1u, 32131u) % 32u), func_4(_wgslsmith_div_i32(0i, var_0), Struct_5(vec2<u32>(var_2.x, var_2.x), -1705f, vec4<bool>(var_3.x, global2.b.a, false, true)), ~vec4<u32>(var_2.x, var_2.x, 22151u, var_2.x)).a.x));
    global2 = Struct_3(false, func_1(min(firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(var_5.a.x, 15u)], u_input.a, 26815i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(11466i, u_input.a, global1[_wgslsmith_index_u32(30570u, 15u)]), vec3<i32>(23468i, global1[_wgslsmith_index_u32(var_5.a.x, 15u)], global1[_wgslsmith_index_u32(13896u, 15u)]), vec3<bool>(true, var_1.a, var_3.x)), reverseBits(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(1190u, 15u)], var_0)))), all(var_3.zz)).b, func_1(-(~select(vec3<i32>(var_0, 2147483647i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(68852u, 15u)], -1i, -2147483647i), vec3<bool>(var_1.b.a, global2.c.a, false))), false).b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(min(vec2<i32>(12553i, global1[_wgslsmith_index_u32(12671u, 15u)]), vec2<i32>(32682i, global1[_wgslsmith_index_u32(39629u, 15u)])), ~abs(vec2<i32>(u_input.a, var_0))), (-global1[_wgslsmith_index_u32(78930u, 15u)] << (func_3().x % 32u)) >> (23220u % 32u));
}

