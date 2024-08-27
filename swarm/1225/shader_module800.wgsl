struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 1> = array<f32, 1>(1123f);

var<private> global2: array<u32, 30>;

var<private> global3: f32 = 1027f;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, true), -551f, false, 15010u, vec2<u32>(59892u, 0u)), Struct_1(vec4<bool>(true, false, false, true), 493f, false, 39294u, vec2<u32>(4294967295u, 0u)), false, Struct_1(vec4<bool>(false, true, true, false), 429f, true, 4294967295u, vec2<u32>(27709u, 1u)), Struct_1(vec4<bool>(true, false, true, false), 652f, false, 11752u, vec2<u32>(72377u, 1u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(max(~global0.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global0.a.x), ~global2[_wgslsmith_index_u32(4294967295u, 30u)]), firstTrailingBit(1993u))), 1u)], 51833u << (~abs(u_input.c.x) % 32u), _wgslsmith_add_i32(u_input.e.x, _wgslsmith_sub_i32(~(u_input.e.x << (global0.a.x % 32u)), u_input.e.x)));
}

