struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<bool, 17>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<bool, 17>();
    let var_0 = -5829i;
    global0 = ~u_input.c;
    var var_1 = 4294967295u;
    var var_2 = vec3<u32>(~_wgslsmith_sub_u32(~_wgslsmith_div_u32(global0.x, 4294967295u), max(firstLeadingBit(u_input.a.x), ~32125u)), countOneBits(firstLeadingBit(~1u)), 1u);
    return Struct_1(select(vec3<i32>(1i, var_0, u_input.b), vec3<i32>(~(~(-3238i)), var_0, u_input.b), !(!global2[_wgslsmith_index_u32(~0u, 17u)])));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f)))));
    var var_1 = Struct_1(-countOneBits(_wgslsmith_div_vec3_i32(abs(arg_3.a), vec3<i32>(u_input.b, -10629i, 0i))));
    var var_2 = 9307i;
    let var_3 = _wgslsmith_clamp_u32(4294967295u, ~1u, _wgslsmith_div_u32(3784u, 1u)) << (~countOneBits(firstTrailingBit(countOneBits(u_input.a.x))) % 32u);
    global1 = array<vec4<u32>, 14>();
    return StorageBuffer(firstTrailingBit(~abs(u_input.a.xz ^ vec2<u32>(0u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    var var_0 = _wgslsmith_f_op_f32(trunc(-1281f)) < _wgslsmith_f_op_f32(max(637f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1887f, 1483f)))))));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(reverseBits(0u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c & vec3<u32>(1u, global0.x, u_input.d), ~vec3<u32>(14302u, 52314u, u_input.a.x)), 4294967295u)), ~min(~_wgslsmith_mod_u32(global0.x, u_input.c.x), global0.x << (_wgslsmith_add_u32(1u, 7018u) % 32u)));
    var var_2 = func_1(u_input.c);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(step(-1031f, _wgslsmith_f_op_f32(-462f + -1157f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(291f, 1127f, true))))), 426f);
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-289f)))) >= _wgslsmith_f_op_f32(-var_3.x), vec3<bool>(~_wgslsmith_sub_u32(0u, var_1.x) <= u_input.c.x, !(!(global2[_wgslsmith_index_u32(20449u, 17u)] && global2[_wgslsmith_index_u32(global0.x, 17u)])), global2[_wgslsmith_index_u32(~(abs(var_1.x) << (46136u % 32u)), 17u)]), ~vec4<i32>(44665i, _wgslsmith_div_i32(-u_input.b, -2147483647i), i32(-1i) * -20715i, i32(-1i) * -10382i), Struct_1(firstTrailingBit(var_2.a) & -(var_2.a >> (vec3<u32>(4294967295u, var_1.x, 4294967295u) % vec3<u32>(32u)))));
}

