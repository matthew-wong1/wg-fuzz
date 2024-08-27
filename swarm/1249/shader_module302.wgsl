struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, true, true)), -1779i, vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global2: array<Struct_2, 31>;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global3.x, 31u)];
    let var_1 = var_0.b >> (~_wgslsmith_clamp_u32(~1u, 1u, 0u) % 32u);
    let var_2 = max(~countOneBits(u_input.a.yz), u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, firstTrailingBit(vec4<u32>(19769u, ~0u, _wgslsmith_mod_u32(~u_input.b.x, u_input.c.x), ~_wgslsmith_sub_u32(19923u, global3.x))), _wgslsmith_f_op_f32(step(-1635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1221f)))))), vec4<i32>(~(_wgslsmith_sub_i32(0i, global1.b) ^ 40246i), ~2147483647i, _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(0i, -41156i)) << (~max(u_input.b.x, u_input.d) % 32u), global1.b), 1f);
}

