struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -123f;

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(-30454i, -1i, 0i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = max(u_input.a.yy, _wgslsmith_mult_vec2_i32(-((vec2<i32>(global2.x, arg_0.x) | arg_0.yz) ^ abs(vec2<i32>(-20516i, arg_0.x))), ~vec2<i32>(-19126i, arg_0.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(486f)))))));
    let var_1 = all(select(vec3<bool>(global1.b, all(vec2<bool>(true, true)), global1.b), vec3<bool>(!(!global1.b), all(!vec3<bool>(true, false, arg_1)), arg_1 || !global1.b), true));
    let var_2 = global1.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return vec4<bool>(true, true, !all(vec2<bool>(!arg_1, all(vec2<bool>(false, true)))), !all(select(vec2<bool>(true, true), vec2<bool>(var_1, false), vec2<bool>(true, arg_1))) | !global1.b);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = 17076i;
    global2 = vec3<i32>(min(~(~(~0i)), global2.x), -29514i, abs(select(-8052i, global2.x, !global1.b || !global1.b)));
    let var_1 = vec4<bool>(true, any(func_3(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, global2.x, -1i), all(!vec4<bool>(false, global1.b, true, global1.b)), (vec2<i32>(var_0, 1i) | global2.xy) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-96273i, 0i), u_input.a.yz, vec2<i32>(1i, global2.x)))), select(true, !any(vec3<bool>(true, arg_0, arg_0)), false), false);
    global1 = Struct_1(~_wgslsmith_add_vec4_u32(global1.a, firstTrailingBit(vec4<u32>(103419u, 47871u, 36931u, global1.a.x))) | vec4<u32>(1u, ~1u, 61830u, 52791u), ((~global2.x ^ (i32(-1i) * -27213i)) < u_input.b) != (!(!arg_0) || true));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.a, reverseBits(-u_input.a) >> (global1.a.xzz % vec3<u32>(32u))), 1i, 1000f, Struct_1(min(global1.a, ~(~global1.a)), func_3(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), func_3(u_input.a, false, vec2<i32>(global2.x, -2876i)).x, _wgslsmith_add_vec2_i32(global2.xy, u_input.a.xz)).x && false), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u), vec4<u32>(97015u, u_input.d.x, global1.a.x, u_input.d.x)), ~(vec4<u32>(82188u, u_input.c, 0u, 1u) << (vec4<u32>(55256u, global1.a.x, 4294967295u, u_input.d.x) % vec4<u32>(32u)))), select(func_3(vec3<i32>(u_input.b, -24231i, -40549i), false, global2.zx).x | !arg_0, all(func_3(vec3<i32>(var_0, var_0, var_0), arg_0, vec2<i32>(1i, var_0)).xx), global1.b)));
    return var_2.d;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-744f * 335f);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, -748f, -452f, -181f))))));
    var var_1 = Struct_2(abs(u_input.b), 57383i, var_0.x, func_2(!(global1.b | true) & global1.b, -1698f), func_2(!global1.b, 1f));
    var var_2 = func_2(global1.b && true, _wgslsmith_f_op_f32(step(-421f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec2<bool>(global1.b, false), select(vec2<bool>(true, global1.b), vec2<bool>(true, false), vec2<bool>(true, global1.b)), vec2<bool>(true, true))));
    global1 = Struct_1(global1.a, !global1.b & all(!select(var_0, var_0, var_0)));
    global2 = -_wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, _wgslsmith_mult_i32(-15721i, global2.x), i32(-1i) * -59197i) >> (global1.a.ywy % vec3<u32>(32u)), u_input.a);
    var var_1 = vec2<u32>(global1.a.x, abs(~global1.a.x)) | ~select(vec2<u32>(global1.a.x, u_input.d.x >> (u_input.c % 32u)), global1.a.zx, true);
    global1 = func_1();
    global1 = func_2(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1210f)), -1051f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1780f - -398f)), _wgslsmith_f_op_f32(f32(-1f) * -197f))), -333f, -213f, -424f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 198f))))), vec4<i32>(-11979i, -1i, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global2.x, global2.x, 1i), vec4<i32>(-1i, global2.x, u_input.a.x, 23101i)), vec4<i32>(0i, u_input.b, global2.x, -12924i)), abs(_wgslsmith_sub_i32(min(u_input.a.x, 22678i), min(u_input.a.x, u_input.b)))));
}

