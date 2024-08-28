struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, true, true, true, true, false, true, false, true, false, false, true, false);

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, 3574i, 62883i, -7580i), vec4<i32>(2147483647i, 1i, -14387i, 21824i), vec4<i32>(50764i, -24179i, 0i, 0i), vec4<i32>(1i, -52195i, 11642i, 9065i), vec4<i32>(i32(-2147483648), 1i, 42695i, 2147483647i), vec4<i32>(-35145i, -4942i, 0i, 1i));

var<private> global2: array<vec4<i32>, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(select(select(-36469i, 2147483647i, any(vec3<bool>(true, false, false))), ~12421i, all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], true, true, global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.c.x, 14u)])))), _wgslsmith_mod_i32(~29219i, ~select(-1i, u_input.b.x, true))));
}

