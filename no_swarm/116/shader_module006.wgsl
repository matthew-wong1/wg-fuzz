struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-1i, -19408i, 32134i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.zx;
    global1 = array<vec3<i32>, 1>();
    global0 = abs(abs(abs(var_0.x))) << (countOneBits(~36153u) % 32u);
    global1 = array<vec3<i32>, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 670f, 1952f, -303f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, 287f, -419f, -1232f)))));
    return Struct_1(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 20531u, 84973u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, var_0.x, u_input.a.x)), vec4<u32>(95565u, u_input.a.x, var_0.x, u_input.a.x) | (vec4<u32>(0u, 4294967295u, u_input.a.x, 0u) | vec4<u32>(16607u, u_input.a.x, u_input.a.x, 25804u)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, u_input.a.x, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, 42614u, var_0.x)), ~(~u_input.a.x), u_input.a.x, min(30950u, 22205u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), var_1.x)));
}

fn func_3() -> vec4<u32> {
    return ~_wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, 9450u, 12374u, u_input.a.x), vec4<u32>(62859u, 1u, u_input.a.x, u_input.a.x), true) & vec4<u32>(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(32196u, 0u, 1u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 51881u, 31860u)), firstLeadingBit(4294967295u), u_input.a.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(44727u, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1781u, 4294967295u)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(func_2(), Struct_1(~func_3(), func_2().b));
    var var_1 = -1748f;
    let var_2 = Struct_2(Struct_1(vec4<u32>(~u_input.a.x & u_input.a.x, _wgslsmith_dot_vec2_u32(func_3().xy, u_input.a.yz), _wgslsmith_div_u32(_wgslsmith_add_u32(4043u, u_input.a.x), 31199u), 0u), _wgslsmith_f_op_f32(step(-989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.b)))))), var_0.b);
    global1 = array<vec3<i32>, 1>();
    let var_3 = Struct_2(var_0.b, func_2());
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(-(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -30362i, u_input.b.x, 12715i))));
    var var_1 = select(vec3<bool>(true && !all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), true), select(vec3<bool>(any(vec2<bool>(true, true)), false, u_input.a.x > ~8772u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), all(vec4<bool>(false, false, false, true))), any(vec4<bool>(true, false, true, false))), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), true)), true);
    var var_2 = global1[_wgslsmith_index_u32(~(u_input.a.x | _wgslsmith_mult_u32((60460u << (1u % 32u)) ^ (u_input.a.x & u_input.a.x), ~1u)), 1u)];
    global0 = var_0.a.x;
    var_2 = -global1[_wgslsmith_index_u32(u_input.a.x, 1u)];
    let var_3 = Struct_1(var_0.a, -116f);
    global0 = ~(~u_input.a.x);
    let var_4 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1110f * var_3.b)), _wgslsmith_f_op_f32(exp2(func_1(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, var_2.x)).b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))))), true)), u_input.d);
}

