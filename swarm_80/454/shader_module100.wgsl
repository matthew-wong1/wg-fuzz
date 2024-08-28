struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 61295u;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(0u, Struct_1(7544u, 539f, 4294967295u, true)), Struct_3(0u, Struct_1(0u, 1013f, 0u, true)), Struct_3(1u, Struct_1(61823u, -935f, 4294967295u, false)), Struct_3(4294967295u, Struct_1(52595u, 1000f, 77710u, false)), Struct_3(1u, Struct_1(1u, 1130f, 1u, false)), Struct_3(4294967295u, Struct_1(4294967295u, 698f, 4294967295u, false)), Struct_3(4294967295u, Struct_1(0u, -950f, 4294967295u, false)), Struct_3(26876u, Struct_1(1u, 237f, 4294967295u, false)), Struct_3(75102u, Struct_1(4294967295u, 981f, 1u, false)), Struct_3(101181u, Struct_1(1u, 177f, 59245u, false)), Struct_3(0u, Struct_1(1u, -261f, 4294967295u, false)), Struct_3(0u, Struct_1(7384u, 178f, 1u, false)), Struct_3(1u, Struct_1(29399u, 2353f, 2772u, false)), Struct_3(9038u, Struct_1(1237u, -1000f, 0u, false)), Struct_3(1u, Struct_1(12838u, -842f, 4294967295u, false)), Struct_3(4294967295u, Struct_1(15032u, 944f, 0u, true)), Struct_3(38205u, Struct_1(74460u, 1804f, 45681u, true)), Struct_3(4294967295u, Struct_1(124964u, 167f, 3828u, true)), Struct_3(22583u, Struct_1(1u, 1701f, 30967u, true)), Struct_3(4294967295u, Struct_1(4294967295u, -2290f, 4294967295u, true)), Struct_3(1u, Struct_1(1u, -2099f, 4294967295u, false)), Struct_3(1u, Struct_1(4294967295u, -1424f, 1u, false)), Struct_3(39000u, Struct_1(0u, -637f, 54141u, true)));

var<private> global2: array<Struct_5, 17>;

var<private> global3: vec2<u32> = vec2<u32>(21999u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: i32) -> Struct_5 {
    global1 = array<Struct_3, 23>();
    return global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(0u, 1u) | global3.x), 17u)];
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    global1 = array<Struct_3, 23>();
    global1 = array<Struct_3, 23>();
    var var_0 = func_1(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-52002i, -32569i) & vec2<i32>(-50370i, arg_1.a)), ~vec2<i32>(1i, u_input.c))).c;
    global2 = array<Struct_5, 17>();
    return 1613f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, ~abs(4294967295u)), 1u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(-59220i)), 5399u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-757f, Struct_4(17762i, var_0.d.b, 1u), var_0.d.b, func_1(var_0.a.b)))), _wgslsmith_f_op_f32(var_0.d.b.b * func_1(_wgslsmith_mult_i32(-11516i, u_input.a)).d.b.b))), u_input.c);
}

