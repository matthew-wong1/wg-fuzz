struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 8013u, 50941u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec4<u32>(u_input.a.x, u_input.c, 65333u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.b, global0.x, 7467u, 0u), vec4<u32>(u_input.b, 1u, 0u, global0.x) & vec4<u32>(25080u, u_input.a.x, u_input.e.x, u_input.c), vec4<bool>(false, false, false, true)), ~vec4<u32>(global0.x, global0.x, global0.x, u_input.e.x) | (vec4<u32>(u_input.a.x, u_input.b, 14436u, global0.x) << (vec4<u32>(35510u, 9276u, 4294967295u, u_input.a.x) % vec4<u32>(32u))))));
    var var_0 = true;
    var var_1 = !(!vec4<bool>(true, false && any(vec4<bool>(false, false, true, false)), true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let var_2 = Struct_1(u_input.d, -42316i);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec2<u32>(120429u, 0u), vec2<u32>(u_input.a.x, ~global0.x)), ~u_input.a.x, global0.ww, vec2<u32>(u_input.a.x, abs(_wgslsmith_mult_u32(10670u, _wgslsmith_add_u32(global0.x, u_input.e.x)))));
}

