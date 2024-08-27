struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, vec3<i32>(-40705i, 0i, i32(-2147483648))), 4294967295u, Struct_1(4294967295u, vec3<i32>(-17118i, i32(-2147483648), 2147483647i)));

var<private> global1: array<bool, 8>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: array<f32, 31>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 31>();
    let var_0 = _wgslsmith_div_u32(global3.a.a | _wgslsmith_add_u32(global2.a, 0u), 31479u);
    var var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~47631u), min(_wgslsmith_div_u32(global3.c.a, global2.a), ~u_input.a.x)), 47191u), ~vec3<i32>(u_input.b, 1i, global2.b.x));
    var var_2 = Struct_1(~global2.a, select(global0.c.b, firstTrailingBit(_wgslsmith_mod_vec3_i32(global0.a.b, vec3<i32>(global3.c.b.x, u_input.b, -1i))), global1[_wgslsmith_index_u32(1u, 8u)]));
    var var_3 = _wgslsmith_sub_i32(max(select(i32(-1i) * -u_input.b, _wgslsmith_add_i32(var_1.b.x, ~(-1i)), true), global0.a.b.x), 68484i);
    let x = u_input.a;
    s_output = StorageBuffer(559f, var_2.b.x, vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(global0.c.a >> (global0.b % 32u)), _wgslsmith_div_u32(global2.a, 80021u)), 31u)], _wgslsmith_f_op_f32(541f * global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1.a, u_input.a.x), 31u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_2.a, 31u)] * _wgslsmith_div_f32(1377f, _wgslsmith_f_op_f32(f32(-1f) * -577f)))), ~var_1.b >> (~(~vec3<u32>(global0.c.a, global0.a.a, 1u)) % vec3<u32>(32u)));
}

