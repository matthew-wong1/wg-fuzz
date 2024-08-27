struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = global1.a.b.a.x;
    var var_0 = Struct_5(Struct_3(Struct_2(_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, global1.c.x), vec2<i32>(u_input.d.x, 0i)), global1.a.b, arg_0), firstTrailingBit(~u_input.b.x), ~vec3<i32>(42946i, ~global1.c.x, 2147483647i), ~(~(~u_input.b.x)), 1i));
    var_0 = Struct_5(var_0.a);
    var var_1 = false;
    global1 = Struct_3(Struct_2(u_input.d.xy, Struct_1(global1.a.b.a), 763f), var_0.a.d, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 0i), ~vec3<i32>(u_input.c, var_0.a.e, u_input.d.x))) >> (vec3<u32>(firstTrailingBit(reverseBits(57844u)), ~70017u, var_0.a.b) % vec3<u32>(32u)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40800u, 33321u, u_input.b.x, var_0.a.b), vec4<u32>(u_input.b.x, var_0.a.d, 1u, var_0.a.d) | vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)), 0u), _wgslsmith_mult_u32(1u, 1u)), var_0.a.c.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c)))));
    global1 = Struct_3(global1.a, ~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.b.x, 47634u, 3886u), vec4<u32>(20258u, 45321u, global1.d, global1.d), vec4<bool>(arg_1.b.a.x, true, false, global1.a.b.a.x)), vec4<u32>(u_input.b.x, 0u, 7454u, global1.b) ^ vec4<u32>(u_input.b.x, 13578u, 27902u, u_input.b.x)) | firstLeadingBit(u_input.b.x)), arg_0.xyx, _wgslsmith_add_u32(global1.d, ~_wgslsmith_div_u32(global1.d & 33702u, u_input.b.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-max(arg_0.xyz, arg_0.xyw), ~vec3<i32>(-2147483647i, -63988i, 0i)), abs(~u_input.a.x << ((u_input.b.x ^ 4294967295u) % 32u))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global1.a.c + _wgslsmith_f_op_f32(2156f - arg_1.c))))), _wgslsmith_f_op_f32(-var_0)));
    var var_2 = countOneBits(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, arg_1.a.x, -65325i), arg_0, u_input.d), max(arg_0, arg_0))) << (u_input.b.x % 32u));
    let var_3 = abs(global1.c);
    return any(vec2<bool>(global1.a.b.a.x, all(select(vec4<bool>(arg_1.b.a.x, global1.a.b.a.x, arg_1.b.a.x, global1.a.b.a.x), vec4<bool>(false, arg_1.b.a.x, true, true), vec4<bool>(arg_1.b.a.x, false, false, arg_1.b.a.x))))) | true;
}

fn func_1() -> vec2<i32> {
    let var_0 = global1.a.b;
    var var_1 = ~0u;
    global0 = all(select(!vec4<bool>(!var_0.a.x, var_0.a.x, func_2(u_input.d, global1.a, vec2<i32>(28648i, u_input.c)), all(vec3<bool>(false, false, var_0.a.x))), !select(vec4<bool>(false, global1.a.b.a.x, var_0.a.x, true), select(global1.a.b.a, vec4<bool>(var_0.a.x, false, global1.a.b.a.x, false), vec4<bool>(global1.a.b.a.x, global1.a.b.a.x, true, true)), false & var_0.a.x), (-349f < _wgslsmith_f_op_f32(func_3(global1.a.c))) && var_0.a.x));
    let var_2 = global1.a.c > 598f;
    let var_3 = global1.d;
    return vec2<i32>(-1i) * -abs(~(global1.c.yy ^ u_input.d.ww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d;
    var var_1 = vec2<bool>(false, select(global1.b < u_input.b.x, global1.a.c <= _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global1.a.c))), global1.a.b.a.x));
    global0 = true;
    let var_2 = ~(~(min(vec4<u32>(global1.d, u_input.b.x, global1.d, 82864u), vec4<u32>(1u, 1u, global1.b, u_input.b.x)) ^ (vec4<u32>(global1.d, 11513u, 4294967295u, 0u) ^ vec4<u32>(5878u, u_input.b.x, u_input.b.x, 4294967295u)))) & vec4<u32>(39689u, ~_wgslsmith_dot_vec2_u32(countOneBits(u_input.b), vec2<u32>(u_input.b.x, 13612u) << (u_input.b % vec2<u32>(32u))), 4315u, ~(~u_input.b.x));
    let var_3 = global1.a.b.a.xw;
    global0 = all(global1.a.b.a.yx);
    global0 = global1.a.b.a.x;
    let var_4 = max(~global1.a.a, func_1());
    global1 = Struct_3(global1.a, countOneBits(select(1u, _wgslsmith_sub_u32(16367u, 9191u | global1.d), (global1.a.c >= global1.a.c) == false)), u_input.d.wxy, firstLeadingBit(max(firstTrailingBit(~global1.b), 0u >> (~global1.d % 32u))), 37095i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.a.c, _wgslsmith_f_op_f32(floor(954f))));
}

