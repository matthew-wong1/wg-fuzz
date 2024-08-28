struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(2147483647i, 18377i, 30742i, 3963i), vec4<i32>(-24209i, 523i, -1i, 6531i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -21459i), vec4<i32>(13353i, 2147483647i, 0i, 2147483647i), vec4<i32>(2147483647i, 62746i, -3604i, -1i), vec4<i32>(1i, -51103i, 56661i, 24725i), vec4<i32>(508i, 1i, 22815i, 1i), vec4<i32>(i32(-2147483648), 0i, 27709i, 1i), vec4<i32>(1i, -54307i, 3770i, 19217i), vec4<i32>(2147483647i, 13893i, 61978i, 2147483647i));

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(542f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-583f, -344f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(sign(-333f))), -294f))));
    var var_1 = ~(-arg_1);
    return Struct_1(arg_1, ~(~(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(18743u, 0u), u_input.a)), reverseBits(reverseBits(-vec3<i32>(u_input.c, u_input.c, -39598i))), firstLeadingBit(1u)));
    global2 = array<vec4<i32>, 10>();
    var var_1 = firstTrailingBit(firstTrailingBit(~vec2<u32>(global3.a.x, global3.a.x)));
    var_1 = global1.a ^ ~(vec2<u32>(_wgslsmith_mod_u32(var_1.x, 1u), abs(global1.a.x)) << (global1.a % vec2<u32>(32u)));
    var var_2 = Struct_1(reverseBits(vec3<i32>(func_1(Struct_3(vec2<u32>(21233u, 0u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 6120i, u_input.c), var_0.a.a), global1.a.x).b.x, var_0.a.b.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, 43061i)), vec2<i32>(2147483647i, 52091i)))), min(var_0.a.b, var_0.a.a));
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_div_f32(2150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1827f))))), reverseBits(1074u));
}

