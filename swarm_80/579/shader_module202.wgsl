struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<bool>, 4>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global4.b;
    let x = u_input.a;
    s_output = StorageBuffer(global4.c, -_wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(-31896i, -23049i), -5646i), -1i), reverseBits(select(u_input.b.zx, abs(u_input.b.xy ^ u_input.b.xx), vec2<bool>(true, global4.e.x == -1i))));
}

