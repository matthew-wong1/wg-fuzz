struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_3(firstTrailingBit(~u_input.b), true, Struct_2(arg_2, arg_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3, arg_3, 358f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-927f, arg_3, arg_3, -2634f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -825f, arg_3, arg_3), vec4<f32>(161f, arg_3, 470f, -420f))))))), arg_2.a);
    let var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, -2147483647i), vec3<i32>(arg_0.a, arg_2.a, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a, -878i, u_input.a.x), vec3<i32>(arg_0.a, u_input.d.x, var_1.c.b.a))), vec3<i32>(reverseBits(_wgslsmith_sub_i32(15295i << (arg_1 % 32u), arg_2.a)), -41194i, -firstLeadingBit(-11134i)));
    let var_3 = -1i;
    var_1 = Struct_3(var_1.a, all(!(!select(vec4<bool>(true, var_1.b, true, var_1.b), vec4<bool>(var_1.b, false, var_1.b, true), false))), Struct_2(Struct_1(var_2), arg_0, vec4<f32>(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1739f, -452f)) - var_1.c.c.x), 389f, -1367f)), -1i);
    return var_1.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = arg_0;
    var var_2 = (true || any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))) || (_wgslsmith_div_i32(var_1.a.a, select(2147483647i, ~38750i, select(false, false, true))) != ~((2147483647i & arg_0.a.a) ^ var_0));
    var var_3 = !func_3(var_1.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)), u_input.b), Struct_1(_wgslsmith_mult_i32(firstTrailingBit(var_1.a.a), ~arg_0.a.a)), -288f);
    var_2 = true;
    return Struct_1(-1i);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(29892u ^ u_input.b, ~35781u), vec2<u32>(firstTrailingBit(u_input.b), _wgslsmith_clamp_u32(u_input.b, 19430u, u_input.b)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~u_input.b), _wgslsmith_mod_u32(u_input.b, ~4294967295u)), u_input.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.c.x, arg_2.c.x, -453f))))), arg_2.c.wyw, true)))));
    var_0 = 1u;
    var var_2 = arg_2.a;
    let var_3 = 0u;
    return arg_2.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = arg_0.b && !all(select(!vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), !vec4<bool>(true, arg_0.b, true, true), vec4<bool>(true, false, false, true)));
    let var_1 = func_4(!(!(!vec4<bool>(true, true, arg_0.b, true))), _wgslsmith_add_i32(u_input.c.x, ~(~arg_0.d)), Struct_2(func_2(Struct_2(arg_0.c.b, arg_0.c.a, arg_0.c.c)), Struct_1(~u_input.c.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0.c.c * arg_0.c.c), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c.c.x, arg_0.c.c.x, arg_0.c.c.x, arg_0.c.c.x)))))));
    let var_2 = abs(~vec2<i32>(abs(3402i), u_input.d.x)) >> (~vec2<u32>(firstTrailingBit(25735u) & _wgslsmith_add_u32(u_input.b, arg_1.x), 1u) % vec2<u32>(32u));
    var var_3 = i32(-1i) * -var_1.a;
    var_3 = -var_2.x;
    return arg_0.c.c;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(-arg_3.b.a, _wgslsmith_sub_i32(arg_3.b.a, min(u_input.c.x, -13286i))), u_input.c.x | _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_mod_i32(2147483647i, -49920i), reverseBits(arg_3.b.a))) ^ ~_wgslsmith_mod_vec2_i32(u_input.a.zx, ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_3.a.a), u_input.d));
    return StorageBuffer(max(abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(var_0.x, var_0.x, arg_3.b.a)), -u_input.a)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = func_5(-1234f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(993f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(u_input.b, var_0, Struct_2(Struct_1(u_input.c.x), Struct_1(-32759i), vec4<f32>(-1000f, -1272f, -649f, 149f)), -1i), ~vec3<u32>(u_input.b, u_input.b, u_input.b))))), Struct_2(func_4(!vec4<bool>(var_0, var_0, var_0, var_0), _wgslsmith_add_i32(reverseBits(u_input.a.x), u_input.a.x), Struct_2(func_4(vec4<bool>(true, true, var_0, false), 0i, Struct_2(Struct_1(u_input.a.x), Struct_1(5835i), vec4<f32>(206f, -459f, -445f, -2003f))), Struct_1(-28613i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1179f, -567f, 310f, -228f), vec4<f32>(806f, 1394f, 261f, 608f), var_0)))), Struct_1(abs(-34293i << (u_input.b % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-235f, 1804f, 976f, 1504f)))))));
}

