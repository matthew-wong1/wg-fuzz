struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<bool, 11> = array<bool, 11>(false, true, true, false, false, true, true, true, true, false, false);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(8484u, 1u, 4294967295u, 8332u));

var<private> global3: array<f32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-1i << (u_input.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -36370i), firstLeadingBit(-(i32(-1i) * -13245i))), true);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~u_input.a.x, 8u)]);
}

