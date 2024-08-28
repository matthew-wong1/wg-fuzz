struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(3886i, i32(-2147483648), 1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - global0.a) * global0.a)), _wgslsmith_f_op_vec3_f32(-arg_1.c.a)), vec4<u32>(u_input.c.x, global0.b.x, global0.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.b.x, 18523u), arg_1.b.b.yw), 1u)) >> (global0.b % vec4<u32>(32u)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(622f - 1802f)))) - 233f), global0.a.x, arg_1.c.a.x, global0.a.x);
    let var_1 = Struct_2(arg_1.b, arg_1.c, arg_1.a);
    var var_2 = false;
    global0 = arg_1.b;
    return vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.a.x, -107f))))), 1563f);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = max(min(arg_0.x, arg_2.b.x), ~(_wgslsmith_mult_u32(arg_2.b.x, arg_2.b.x) >> (0u % 32u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(-global0.a)) - _wgslsmith_f_op_vec3_f32(-arg_2.a)), global0.b), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.b, u_input.b, u_input.a, 1i), Struct_2(arg_2, Struct_1(vec3<f32>(arg_2.a.x, arg_2.a.x, global0.a.x), vec4<u32>(4294967295u, 17545u, var_0, global0.b.x)), arg_2), global1[_wgslsmith_index_u32(var_0, 1u)])))), vec3<bool>(false, select(false, arg_3.a.x, true), arg_3.a.x | arg_3.a.x))), ~(vec4<u32>(arg_2.b.x, 4096u, u_input.c.x, 20422u) ^ min(vec4<u32>(global0.b.x, 47742u, global0.b.x, u_input.c.x), global0.b))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(17095i, u_input.a, 2147483647i, arg_3.b), Struct_2(Struct_1(arg_2.a, global0.b), arg_2, Struct_1(arg_2.a, vec4<u32>(arg_0.x, 38430u, 1u, 4294967295u))), vec3<i32>(u_input.b, -28118i, u_input.b))))), ~vec4<u32>(~40184u, _wgslsmith_sub_u32(arg_0.x, 4294967295u), 3868u, select(global0.b.x, 1u, arg_3.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_2.a);
    var var_3 = 1000f;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.yy + arg_2.a.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_1.c.a.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-752f)), 2633f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, arg_1) + vec2<f32>(var_1.b.a.x, arg_1)), !arg_3.a.x & arg_3.a.x))));
    return arg_3.a.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    return select(vec3<bool>(arg_2.a.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(-global0.a.x)), u_input.a <= 8431i, true), vec3<bool>(!all(vec3<bool>(true, false, true)), false, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), select(vec3<bool>(true, all(vec3<bool>(false, true, true)), arg_0 >= arg_1), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true), func_2(vec3<u32>(u_input.c.x, global0.b.x, arg_2.b.x), arg_3.x, arg_2, Struct_3(vec3<bool>(false, false, false), arg_1))), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(global0.a.x, global0.a.x, -774f), global0.b);
    var var_1 = select(func_1(-8117i, select(-2147483647i, ~u_input.b, any(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(true, false, arg_1.a.x, arg_1.a.x), arg_1.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.a - var_0.a), _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(global0.a.x, -2679f, -201f)))), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, global0.a.x, -781f)))), vec3<bool>(all(vec4<bool>(true, true, true, true)), ((i32(-1i) * -13251i) >> (~u_input.c.x % 32u)) == 2147483647i, false), !func_1(-35376i ^ arg_1.b, -u_input.a, Struct_1(vec3<f32>(global0.a.x, global0.a.x, 384f), global0.b), global0.a).x && false);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(global0.a.x, 357f, 211f), vec3<bool>(arg_1.a.x, arg_1.a.x, var_1.x)))))))), ~_wgslsmith_add_vec4_u32(~(~global0.b), var_0.b));
    var_1 = select(arg_1.a, !(!arg_1.a), true == arg_1.a.x);
    var_1 = !(!select(vec3<bool>(select(true, arg_1.a.x, arg_1.a.x), arg_1.a.x, global0.a.x <= 955f), select(select(vec3<bool>(true, false, var_1.x), arg_1.a, false), !arg_1.a, !vec3<bool>(arg_1.a.x, arg_1.a.x, false)), !(!var_1.x)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-472f * var_0.a.x)))), global0.a.x, -1123f), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 31828u, 1u, 29383u), select(var_0.b, vec4<u32>(global0.b.x, var_0.b.x, 1u, 80724u), false)) << ((select(var_0.b, var_0.b, vec4<bool>(true, true, true, arg_1.a.x)) | ~vec4<u32>(arg_0, 22621u, var_0.b.x, 39193u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 1>();
    let var_0 = global0.b.zzx;
    global0 = func_4(45785u, Struct_3(func_1(abs(~u_input.b), countOneBits(_wgslsmith_mult_i32(u_input.a, u_input.b)), Struct_1(vec3<f32>(global0.a.x, global0.a.x, 814f), global0.b & global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 814f, -1486f))), -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(1u, 1u)], vec3<i32>(0i, u_input.b, -1i))));
    let var_1 = _wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-766f)) - 692f)));
    global1 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zy), select(vec2<u32>(countOneBits(1u), 110962u), var_0.zz & u_input.c.zy, vec2<bool>(all(vec4<bool>(false, false, false, true)), true))), ~abs(min(~63825u, global0.b.x)), u_input.a, reverseBits(vec3<i32>(firstLeadingBit(-u_input.a), 10951i, u_input.a ^ u_input.a)));
}

