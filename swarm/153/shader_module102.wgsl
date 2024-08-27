struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 12> = array<i32, 12>(-58610i, i32(-2147483648), -1i, 22344i, i32(-2147483648), i32(-2147483648), -14453i, 19341i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i);

var<private> global2: Struct_1;

var<private> global3: array<bool, 23> = array<bool, 23>(false, false, false, true, false, true, true, true, false, false, false, true, false, false, true, false, false, false, true, false, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    global2 = arg_1;
    let var_1 = Struct_2(arg_1);
    let var_2 = global2.a;
    global0 = 4294967295u;
    return -209f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(global3[_wgslsmith_index_u32(global2.b.x, 23u)], global3[_wgslsmith_index_u32(54711u, 23u)], global3[_wgslsmith_index_u32(4858u, 23u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(global2.b.x, 23u)], false), false), Struct_1(-176f, vec4<u32>(global2.b.x, 0u, 4294967295u, 40187u)))))))), abs(min(global2.b, select(~vec4<u32>(31586u, 1u, 0u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, global2.b.x), vec4<bool>(true, true, false, false)))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, var_0.b.x, var_0.b.x) << (var_0.b.yww % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 4294967295u, u_input.a.x | var_0.b.x) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global2.b.x, 3072u), vec3<u32>(0u, u_input.a.x, 37601u)) % vec3<u32>(32u))), ~4294967295u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), var_0.b);
    let var_3 = 41718u;
    global2 = var_2;
    return Struct_1(-2540f, ~vec4<u32>(~1u, firstTrailingBit(abs(var_3)), ~var_2.b.x, max(4294967295u, _wgslsmith_mod_u32(42680u, var_1.x))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    global1 = array<i32, 12>();
    global2 = func_2();
    let var_0 = -1000f;
    var var_1 = 5584u;
    let var_2 = -466f;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -189f), firstTrailingBit(vec4<u32>(u_input.a.x, 16928u | u_input.a.x, ~u_input.a.x, 26288u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global3 = array<bool, 23>();
    let var_0 = func_1(global3[_wgslsmith_index_u32(global2.b.x, 23u)] | select(!global3[_wgslsmith_index_u32(~global2.b.x, 23u)], any(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(1488u, 23u)], true)), 52919u > (global2.b.x & 58747u)), -27627i);
    var var_1 = _wgslsmith_sub_i32(firstTrailingBit(global1[_wgslsmith_index_u32(firstTrailingBit(1u) ^ 1u, 12u)]), ~(-(~global1[_wgslsmith_index_u32(global2.b.x, 12u)]) << (_wgslsmith_mod_u32(11808u, _wgslsmith_mult_u32(6368u, 28830u)) % 32u)));
    global3 = array<bool, 23>();
    var var_2 = var_0;
    var var_3 = Struct_2(Struct_1(1313f, vec4<u32>(var_2.a.b.x, countOneBits(~var_2.a.b.x), var_2.a.b.x, 3176u)));
    var var_4 = func_2();
    var var_5 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -33837i);
}

