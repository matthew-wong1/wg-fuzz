struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(0u, 4294967295u, 14981u, 24354u, 16975u, 0u, 23095u, 44504u, 0u, 7254u, 5740u, 0u, 0u, 0u, 1u, 1u, 17809u, 1u, 1u, 4294967295u, 30769u, 1u, 1u, 0u, 1u, 0u, 26029u, 62053u);

var<private> global1: vec3<i32> = vec3<i32>(23391i, 1i, -18811i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 688f;
    global1 = vec3<i32>(~(-(i32(-1i) * -2147483647i)), ~_wgslsmith_clamp_i32(countOneBits(global1.x), -38807i, -2147483647i), 5147i);
    let var_1 = _wgslsmith_clamp_i32(u_input.d.x, -(global1.x | _wgslsmith_mod_i32(min(global1.x, global1.x), 0i)), -2147483647i);
    let var_2 = Struct_2(select(vec4<bool>(false, !any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true)), true), vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, !select(false, true, true)), vec4<bool>((var_0 == -451f) | true, false, true, true)), Struct_1(u_input.d.yyy ^ firstLeadingBit(vec3<i32>(38152i, global1.x, -11180i))));
    var var_3 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(-845f, global1.x);
}

