struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(42858u, 24945u, 0u, 26833u, 1u, 0u, 50366u, 0u, 1u, 7570u, 22753u, 26135u, 4294967295u, 1u);

var<private> global1: array<bool, 28>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec3<bool>(false, false, false), 0u, 162f, vec3<bool>(true, true, true), 0i), 18901u));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 13190u, 1u);

var<private> global4: array<vec2<i32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_4 {
    global1 = array<bool, 28>();
    global2 = array<Struct_2, 1>();
    global1 = array<bool, 28>();
    var var_0 = !(_wgslsmith_div_u32(47524u, ~abs(global0[_wgslsmith_index_u32(u_input.b, 14u)])) < (global0[_wgslsmith_index_u32(firstLeadingBit(61102u) >> (reverseBits(global3.x) % 32u), 14u)] >> (global3.x % 32u)));
    let var_1 = Struct_1(vec3<bool>(true && (u_input.c < _wgslsmith_add_u32(1624u, global3.x)), !global1[_wgslsmith_index_u32(abs(countOneBits(5906u)), 28u)], false), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~u_input.d.x), ~0u << (u_input.c % 32u)), global0[_wgslsmith_index_u32(global3.x, 14u)]), 722f, !vec3<bool>(true, global1[_wgslsmith_index_u32(global3.x, 28u)], !(!global1[_wgslsmith_index_u32(1u, 28u)])), -_wgslsmith_clamp_i32(2147483647i, firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_div_i32(1i, select(-2147483647i, 67604i, true))));
    return Struct_4(Struct_2(Struct_1(!(!var_1.d), _wgslsmith_div_u32(u_input.b, 15202u), _wgslsmith_f_op_f32(-var_1.c), vec3<bool>(!var_1.d.x, var_1.d.x, global1[_wgslsmith_index_u32(~u_input.d.x, 28u)]), ~var_1.e << (67365u % 32u)), ~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(23385u, 14u)], ~36984u, firstLeadingBit(global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1().a;
    global4 = array<vec2<i32>, 7>();
    global3 = ~min(~u_input.d.xwx, ~_wgslsmith_add_vec3_u32(u_input.d.wyw, u_input.d.wyx) ^ abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.a.a.b, 14u)], var_1.b)));
    var var_2 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-35525i & abs(reverseBits(firstLeadingBit(var_0.a.a.e))), vec2<u32>(global3.x, ~(~func_1().a.b)));
}

