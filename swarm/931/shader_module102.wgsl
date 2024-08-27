struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<f32, 17> = array<f32, 17>(-1693f, 132f, -527f, -740f, -763f, 740f, 140f, 191f, -891f, -657f, -194f, 114f, -963f, 163f, -1000f, 1454f, 214f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32, arg_3: vec4<bool>) -> bool {
    global0 = array<f32, 18>();
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.b.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.c.x, -465f), vec2<f32>(-1664f, global0[_wgslsmith_index_u32(arg_2, 18u)])), arg_0.b.c, !vec2<bool>(false, arg_3.x))), _wgslsmith_f_op_vec2_f32(-var_0.c), !select(false, var_0.a, true)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-246f)), global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x) ^ arg_2, 18u)]));
    var var_2 = arg_1;
    let var_3 = 1u << (1u % 32u);
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_5(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), true)), Struct_1(true, 4294967295u, arg_1.yx, select(vec4<bool>(true, true, func_3(Struct_5(false, Struct_1(true, 4393u, vec2<f32>(1798f, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, false, true, true)), 97783u, true), arg_0, arg_2.x, vec4<bool>(true, false, true, false)), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), !any(vec3<bool>(true, false, false)))), 0u | _wgslsmith_add_u32(abs(1632u), u_input.c.x), false);
    return false;
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_5) -> bool {
    global0 = array<f32, 18>();
    var var_0 = ~min(_wgslsmith_mult_i32(_wgslsmith_div_i32(firstTrailingBit(u_input.a), firstLeadingBit(u_input.b)), _wgslsmith_add_i32(u_input.a, abs(u_input.a))), -(~(~u_input.b)));
    global1 = array<f32, 17>();
    var_0 = _wgslsmith_mult_i32(max(firstTrailingBit(u_input.b), u_input.b) ^ ~(~u_input.b), 2147483647i << (0u % 32u)) & 0i;
    var_0 = ~3538i;
    return true & all(vec3<bool>(func_2(Struct_3(vec4<u32>(arg_0.c, u_input.c.x, 41800u, 27929u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 18u)], 1184f), vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, 1073f))), ~vec4<u32>(arg_0.c, 1u, u_input.c.x, arg_0.b.b)), arg_2.a, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(select(~2147483647i, -43667i, true), -select(u_input.b, ~1i, select(true, false, u_input.b != 2147483647i)), -u_input.b);
    var var_1 = vec4<bool>(true, !(global0[_wgslsmith_index_u32(28543u, 18u)] != global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), !(!(!(2147483647i > u_input.a))), select(all(vec2<bool>(true, true)), true, true));
    var_1 = select(vec4<bool>(var_1.x, select(!var_1.x, var_1.x, select(func_1(Struct_5(true, Struct_1(false, 4294967295u, vec2<f32>(594f, 267f), vec4<bool>(true, false, true, var_1.x)), u_input.c.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), Struct_5(true, Struct_1(var_1.x, 1u, vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], -2524f), vec4<bool>(false, var_1.x, true, true)), u_input.c.x, true)), var_1.x, false)), func_1(Struct_5(var_1.x && false, Struct_1(var_1.x, 4294967295u, vec2<f32>(global0[_wgslsmith_index_u32(40232u, 18u)], 2329f), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), 0u, any(vec2<bool>(var_1.x, true))), select(vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, false, var_1.x, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, var_1.x, var_1.x), false)), Struct_5(all(var_1.yw), Struct_1(false, 69610u, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(23388u, 17u)]), vec4<bool>(false, true, var_1.x, false)), ~u_input.c.x, !var_1.x)), true), vec4<bool>(any(select(!vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)))), 841f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(7986u, 18u)], -598f)), !(u_input.b == 55666i), var_1.x), select(select(select(select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false))), !(!vec4<bool>(false, var_1.x, false, var_1.x)), var_1.x), !(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false))), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)] > -533f, any(var_1.yxy), true, true), select(!vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, var_1.x, false), var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, false))));
    let var_2 = var_0.x;
    global0 = array<f32, 18>();
    let var_3 = var_0.yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<u32>(firstTrailingBit(~(u_input.c.x << (u_input.c.x % 32u))), 72676u, ~0u), abs(firstTrailingBit(min(vec4<i32>(-8148i, var_3.x, -2147483647i, 8273i) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18025u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.b, 0i, var_0.x, u_input.b))))), -(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, var_0.x, 8416i)), abs(vec4<i32>(var_3.x, 0i, -25504i, var_3.x))) >> (_wgslsmith_dot_vec2_u32(u_input.c.zz, ~vec2<u32>(u_input.c.x, u_input.c.x)) % 32u)), 1i | _wgslsmith_mod_i32(i32(-1i) * -var_3.x, _wgslsmith_add_i32(~u_input.b, -u_input.b)));
}

