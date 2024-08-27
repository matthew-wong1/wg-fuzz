struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(188f, Struct_1(vec3<i32>(-21725i, -1818i, 2147483647i), vec4<i32>(14779i, 53660i, -28278i, 21635i)), true, vec4<bool>(false, true, false, true));

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<f32, 4> = array<f32, 4>(1171f, -925f, 782f, -214f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    global1 = array<Struct_3, 28>();
    var var_0 = global0.d.yyx;
    var var_1 = global0.c;
    var var_2 = 223f > _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(32768u, 4u)])) + _wgslsmith_f_op_f32(-1137f - global2[_wgslsmith_index_u32(4294967295u, 4u)])) * _wgslsmith_f_op_f32(-1f)));
    var var_3 = Struct_3(vec3<u32>(20762u, 1u, ~4913u));
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> bool {
    global1 = array<Struct_3, 28>();
    global0 = Struct_4(-1000f, Struct_1(countOneBits(global0.b.a), -max(-vec4<i32>(u_input.e, 4987i, 30410i, 13374i), _wgslsmith_div_vec4_i32(arg_2.b, vec4<i32>(u_input.b.x, arg_2.a.x, 2147483647i, global0.b.a.x)))), true, select(global0.d, select(!select(global0.d, global0.d, true), !(!global0.d), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_3, true, true, arg_3), arg_1 || true)), !select(global0.d, vec4<bool>(true, false, true, false), global0.d)));
    global1 = array<Struct_3, 28>();
    let var_0 = true;
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(~4127u, 4u)], global0.b, !all(!select(vec4<bool>(arg_3, false, var_0, global0.d.x), global0.d, arg_3)), global0.d);
    return select(true, arg_1, var_0);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = !all(vec4<bool>(func_4(global0.a, !global0.d.x, Struct_1(vec3<i32>(global0.b.a.x, 0i, u_input.a), global0.b.b), func_3()), any(vec4<bool>(global0.c, global0.d.x, true, global0.d.x)) | global0.c, !global0.c, select(true, false, global0.c) && true));
    global0 = Struct_4(global0.a, Struct_1(~_wgslsmith_sub_vec3_i32(global0.b.a, ~vec3<i32>(global0.b.a.x, u_input.b.x, global0.b.a.x)), global0.b.b), ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 64665u), arg_0)) < 4294967295u, vec4<bool>(global0.d.x, !any(global0.d), !all(!global0.d.zyz), all(!global0.d)));
    global2 = array<f32, 4>();
    let var_1 = arg_0.x;
    global1 = array<Struct_3, 28>();
    return Struct_3(arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    global0 = Struct_4(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(arg_0.a.x, 4u)])), Struct_1(vec3<i32>(~arg_2.a.x ^ arg_3, 0i, u_input.a), arg_2.b), all(vec3<bool>((-4060i >= arg_2.a.x) | (-19422i > arg_2.b.x), !global0.d.x, false)), select(global0.d, !arg_1, false));
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1403f) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 4u)]))));
    var var_2 = 0u;
    let var_3 = 2147483647i >> (~((35501u & abs(arg_0.a.x)) << (func_2(vec3<u32>(arg_0.a.x, arg_0.a.x, 41113u)).a.x % 32u)) % 32u);
    return !select(select(!vec4<bool>(global0.d.x, global0.c, true, false), !select(arg_1, global0.d, global0.d), arg_1), !(!(!vec4<bool>(arg_1.x, global0.d.x, arg_1.x, false))), true);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_1(~reverseBits((arg_1.b.b.zyw & arg_1.b.a) >> (countOneBits(vec3<u32>(4294967295u, 0u, 40496u)) % vec3<u32>(32u))), countOneBits(max(min(global0.b.b, min(global0.b.b, arg_1.b.b)), vec4<i32>(u_input.e, global0.b.b.x, 1i, global0.b.a.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    var var_1 = ~select(arg_1.b.b, select(reverseBits(u_input.b), arg_1.b.b, vec4<bool>(!global0.d.x, !arg_1.d.x, true, true)), global0.d);
    var var_2 = func_5(func_2(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(69194u, 0u, 6251u, 15038u))), abs(81768u))), !select(select(select(vec4<bool>(true, global0.d.x, true, arg_1.d.x), global0.d, arg_1.c), vec4<bool>(global0.c, arg_1.c, false, false), global0.d), select(vec4<bool>(false, true, global0.d.x, global0.d.x), vec4<bool>(true, true, arg_1.d.x, arg_1.c), true), global0.d), global0.b, 1i);
    return _wgslsmith_dot_vec2_u32(abs(func_2(firstLeadingBit(~vec3<u32>(31081u, 19792u, 0u))).a.yx), reverseBits(~vec2<u32>(2513u, select(4294967295u, 4294967295u, arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    var var_0 = ((false | any(select(vec2<bool>(global0.d.x, true), global0.d.xw, global0.c))) & (~func_1(global0.a, Struct_4(global2[_wgslsmith_index_u32(4294967295u, 4u)], global0.b, global0.c, vec4<bool>(global0.d.x, global0.d.x, false, global0.c))) < _wgslsmith_mod_u32(_wgslsmith_mod_u32(101476u, 45691u), _wgslsmith_div_u32(43433u, 1u)))) || (!(!(!global0.c)) | (true & !(!global0.c)));
    let var_1 = Struct_1(firstLeadingBit(select(~firstTrailingBit(u_input.b.yzy), ~min(global0.b.b.yyw, vec3<i32>(1i, u_input.a, u_input.b.x)), func_5(func_2(vec3<u32>(67942u, 29297u, 47014u)), !vec4<bool>(false, global0.c, global0.c, true), global0.b, ~(-14769i)).xxy)), u_input.d);
    var var_2 = -(-(~max(vec3<i32>(1i, 1i, 2147483647i), var_1.b.yzz)) ^ -vec3<i32>(_wgslsmith_mod_i32(-1i, global0.b.a.x), select(0i, -17762i, true), _wgslsmith_mod_i32(global0.b.a.x, 11771i)));
    global1 = array<Struct_3, 28>();
    var var_3 = !(12744i >= ~_wgslsmith_sub_i32(u_input.d.x, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a.x, countOneBits(_wgslsmith_div_u32(4294967295u, 37777u)));
}

