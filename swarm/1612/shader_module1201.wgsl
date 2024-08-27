struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(~(u_input.d ^ _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.c, u_input.a.x) ^ u_input.a)), !(true | select(select(false, true, false), any(vec2<bool>(false, true)), false)), abs(~vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x) << (~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, 70591u), vec4<u32>(arg_0.x, 7644u, 35586u, 31446u)), countOneBits(vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_0.x, arg_0.x, 27365u, 53395u), vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x)), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) % vec4<u32>(32u)), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)) || true);
    var_0 = Struct_1(u_input.c, var_0.b, var_0.c, ((abs(24948i) ^ -var_0.a) != -u_input.c) && !(!(!var_0.b)));
    var var_1 = Struct_3(!(!(!(var_0.b || var_0.b))));
    var_1 = Struct_3(all(select(!vec4<bool>(true, var_0.b, true, var_1.a), !(!vec4<bool>(var_1.a, var_1.a, true, var_1.a)), var_1.a)));
    var_0 = Struct_1(reverseBits(-var_0.a | ~0i), false, var_0.c >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~var_0.c.x, 4294967295u & var_0.c.x, ~1u), vec4<u32>(~var_0.c.x, 58438u, countOneBits(0u), ~arg_0.x)) % vec4<u32>(32u)), 0i > max(-2147483647i, abs(~var_0.a)));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = select(vec4<bool>(false, all(vec3<bool>(func_3(vec3<u32>(1u, 4294967295u, 4294967295u)), true, false)), !func_3(max(vec3<u32>(0u, 94136u, 16801u), vec3<u32>(3823u, 26391u, 25025u))), true), vec4<bool>(false, select(true, true, 0i < u_input.b.x) & true, any(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_2(select(vec2<bool>(func_3(~vec3<u32>(0u, 87563u, 1u)), all(vec2<bool>(false, false))), vec2<bool>(!var_0.x, !(!var_0.x)), select(!(!var_0.xz), var_0.zz, !var_0.wy)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-661f, _wgslsmith_f_op_f32(-1f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f + -777f) - _wgslsmith_f_op_f32(f32(-1f) * -519f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1821f, 233f)) * 1000f)))));
    let var_3 = 1u;
    var_1 = Struct_2(var_1.a);
    return Struct_1(2147483647i, !(!var_1.a.x), select(_wgslsmith_add_vec4_u32(vec4<u32>(var_3, var_3, 5401u, var_3), vec4<u32>(0u, 4294967295u, var_3, 1u)), ~firstLeadingBit(vec4<u32>(var_3, 1u, 47135u, 6516u)), vec4<bool>(true || var_0.x, true, var_2 <= var_2, any(vec3<bool>(var_0.x, false, var_1.a.x)))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(51172u, 0u, 0u, 1u) << (vec4<u32>(var_3, 3773u, var_3, var_3) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3, var_3, var_3, var_3), vec4<u32>(var_3, 0u, 4294967295u, var_3)) | ~vec4<u32>(var_3, var_3, 28135u, 52408u)), var_1.a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(~(-12087i), 31434i >> (arg_0.c.x % 32u)) | ~0i;
    var var_1 = select(vec2<u32>(~countOneBits(0u), 1u >> (countOneBits(_wgslsmith_div_u32(arg_0.c.x, arg_0.c.x)) % 32u)), vec2<u32>(~29400u, ~24980u), arg_0.d);
    let var_2 = 22397u;
    var_1 = ~_wgslsmith_clamp_vec2_u32(arg_0.c.yw, vec2<u32>(~27207u, ~69292u) >> (_wgslsmith_sub_vec2_u32(func_2().c.yw, vec2<u32>(4294967295u, var_1.x) << (arg_0.c.xz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(max(1u, var_2), firstTrailingBit(var_2)));
    var_1 = min(firstTrailingBit(~(~vec2<u32>(50709u, 4294967295u))), ~abs(vec2<u32>(arg_0.c.x, 0u))) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(46117u, ~var_1.x), arg_0.c.zz) % vec2<u32>(32u));
    return Struct_3(true);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = func_4(func_2());
    var var_1 = Struct_2(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false)), select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), var_0.a), true | var_0.a), select(!vec2<bool>(true, var_0.a), vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a)), var_0.a));
    var_1 = Struct_2(var_1.a);
    var var_2 = vec3<bool>(true, select(var_1.a.x, any(!vec3<bool>(var_1.a.x, false, true)) && true, any(select(vec2<bool>(true, false), vec2<bool>(var_1.a.x, false), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(true, false))))), !(!func_2().b));
    var var_3 = (_wgslsmith_sub_i32(func_2().a, -(i32(-1i) * -20796i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, ~u_input.d, -u_input.a.x), vec4<i32>(-38228i, 50099i & u_input.c, -40574i, 33357i))) & u_input.b.x;
    return abs(~vec2<u32>(64191u, func_2().c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, u_input.d << (51655u % 32u))), u_input.b.xz));
    let var_1 = ~78580u;
    var var_2 = var_0.x;
    var var_3 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(-392f + 1000f))), -1632f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))))));
    var_3 = ~(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1, var_3.x), vec2<u32>(var_3.x, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

