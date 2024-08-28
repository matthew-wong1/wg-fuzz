struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 3444u, 10008u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(Struct_2(~(~vec4<i32>(-1i, 2147483647i, -1i, -1i)), 2147483647i, 108276u), true | (any(vec4<bool>(false, true, false, false)) != true), false), ~vec2<u32>(u_input.b.x, abs(u_input.b.x)));
    let var_1 = u_input.b;
    global0 = reverseBits(vec3<u32>(~u_input.b.x, firstTrailingBit(firstTrailingBit(~global0.x)), 73791u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(825f, -1244f, -716f) - vec3<f32>(-273f, -786f, -1000f))))));
    var var_3 = !vec2<bool>((_wgslsmith_mult_i32(27132i, var_0.a.a.b) & _wgslsmith_mod_i32(var_0.a.a.a.x, var_0.a.a.b)) >= var_0.a.a.a.x, any(select(vec3<bool>(var_0.a.c, var_0.a.b, false), vec3<bool>(false, false, var_0.a.b), vec3<bool>(var_0.a.b, true, false))) & true);
    let x = u_input.a;
    s_output = StorageBuffer(21064u, -606f, (u_input.b & ~(~vec4<u32>(global0.x, u_input.c, global0.x, var_1.x))) >> (vec4<u32>(~(~var_0.b.x), var_0.a.a.c, ~12697u << (~u_input.b.x % 32u), 14178u >> (var_0.a.a.c % 32u)) % vec4<u32>(32u)), vec2<f32>(var_2.x, 1203f));
}

