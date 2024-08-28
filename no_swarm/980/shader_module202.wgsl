struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 13>;

var<private> global2: bool = false;

var<private> global3: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_5) -> u32 {
    let var_0 = firstTrailingBit(2147483647i);
    let var_1 = -1488f;
    let var_2 = any(select(select(!global3.a.zyz, select(select(vec3<bool>(false, true, true), vec3<bool>(global3.a.x, global3.a.x, global3.a.x), false), global3.a.yxx, !vec3<bool>(false, arg_3.b.a.a.x, false)), !arg_3.b.a.a.ywx), global0.a.a.a.wwx, true));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, _wgslsmith_f_op_f32(-arg_3.a.x)));
    return min(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 8048u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 42879u, 64245u), vec3<u32>(1u, 4085u, 4294967295u))), ~1u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(52053u, u_input.b, u_input.a, u_input.a), select(vec4<u32>(u_input.b, u_input.a, u_input.a, 29042u), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), global3.a.x)), u_input.b) | ~u_input.b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_2 {
    global0 = Struct_4(Struct_2(Struct_1(global0.a.a.a)));
    let var_0 = ~_wgslsmith_mod_u32(~(~(~u_input.b)), _wgslsmith_mod_u32(u_input.b, 0u));
    var var_1 = -(~u_input.c.x << (func_3(1i, u_input.c.x, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_5(vec2<f32>(1223f, 346f), arg_0.a, arg_0.a.a.a.x)) % 32u)) > ~_wgslsmith_sub_i32(1i, u_input.c.x);
    var var_2 = true;
    var_2 = any(global3.a.xww) || true;
    return Struct_2(Struct_1(global3.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<u32>) -> i32 {
    let var_0 = all(select(vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(arg_3.x) ^ u_input.a, 13u)], arg_0.a.a.a.x), vec2<bool>(!(!global0.a.a.a.x), !(u_input.a < arg_0.b)), any(vec2<bool>(select(global0.a.a.a.x, true, false), true))));
    let var_1 = arg_0.b;
    global1 = array<bool, 13>();
    global3 = arg_1.a;
    var var_2 = 44563i;
    return min(48952i, reverseBits(19488i << (u_input.a % 32u)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    global0 = Struct_4(global0.a);
    var var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(func_4(Struct_3(global0.a, u_input.b, vec4<bool>(global3.a.x, false, true, true)), func_2(Struct_4(global0.a), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true))))), !global3.a, ~vec2<u32>(0u, 4294967295u)), -2147483647i)), vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(-1i, -1461i)) >> ((4294967295u << (_wgslsmith_div_u32(19374u, u_input.b) % 32u)) % 32u), 0i));
    global0 = Struct_4(global0.a);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-266f, 617f)))), func_2(Struct_4(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_0, arg_0, true, global0.a.a.a.x)))), Struct_4(global0.a))), Struct_4(Struct_2(func_2(Struct_4(Struct_2(global0.a.a)), Struct_4(Struct_2(global0.a.a))).a))), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(11255u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(4294967295u, 65792u, 36722u), vec3<bool>(false, global3.a.x, arg_0)), vec3<u32>(0u, 4294967295u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), 13u)]);
    let var_2 = Struct_3(func_2(Struct_4(func_2(Struct_4(var_1.b), Struct_4(var_1.b))), Struct_4(func_2(Struct_4(global0.a), Struct_4(global0.a)))), u_input.b, !select(select(!var_1.b.a.a, !global3.a, var_1.b.a.a), !select(global3.a, vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(61257u, 13u)]), true && all(global0.a.a.a.yww)));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, _wgslsmith_f_op_f32(func_1(true, u_input.c, -27034i)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f - -1000f)) + _wgslsmith_f_op_f32(ceil(-1627f))), _wgslsmith_f_op_f32(-1198f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -308f), -451f)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-393f, _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, 206f)))))), global0.a, all(vec3<bool>(_wgslsmith_f_op_f32(round(-1294f)) <= _wgslsmith_f_op_f32(sign(1404f)), select(any(vec2<bool>(global0.a.a.a.x, global0.a.a.a.x)), !global3.a.x, func_2(Struct_4(Struct_2(global0.a.a)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global0.a.a.a.x, global1[_wgslsmith_index_u32(4686u, 13u)]))))).a.a.x), !all(vec2<bool>(global0.a.a.a.x, true)))));
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(func_3(_wgslsmith_sub_i32(~(-94623i), u_input.c.x), firstLeadingBit(~u_input.c.x), u_input.c, Struct_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_1.a.x))), func_2(Struct_4(global0.a), Struct_4(Struct_2(Struct_1(global3.a)))), !global1[_wgslsmith_index_u32(12898u, 13u)])), ~u_input.a, _wgslsmith_add_u32(firstTrailingBit(~28183u), reverseBits(u_input.b))), abs(_wgslsmith_mult_u32(u_input.b, firstTrailingBit(u_input.a))), u_input.b);
    let var_3 = var_2.xz;
    var var_4 = firstLeadingBit(-u_input.c) ^ ~(~vec3<i32>(i32(-1i) * -28329i, u_input.c.x, _wgslsmith_mod_i32(15760i, -20391i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.x);
}

