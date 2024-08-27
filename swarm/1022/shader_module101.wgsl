struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(-2365i, 2154i), -1i);
    return Struct_2(arg_0, Struct_1(-vec2<i32>(~1i, -var_0.x), _wgslsmith_f_op_f32(1150f * arg_0.x), vec3<u32>(u_input.c, ~abs(1u), arg_2)), max((vec3<u32>(9420u, arg_2, 79330u) ^ vec3<u32>(arg_2, 1u, 0u)) | vec3<u32>(arg_2, 1u, 37265u), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2, arg_2), vec3<u32>(u_input.a.x, arg_2, 4294967295u)), reverseBits(vec3<u32>(0u, u_input.c, arg_2)))) << (vec3<u32>(u_input.a.x, ~_wgslsmith_div_u32(4294967295u, 1u), 1u) % vec3<u32>(32u)), ~(1i << (1u % 32u)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = select(!select(arg_0.b.xz, select(vec2<bool>(arg_0.b.x, arg_0.b.x), !arg_0.b.xy, true), arg_0.b.x), select(!arg_0.b.yz, vec2<bool>(true, true), !arg_0.b.xx), arg_0.b.x);
    let var_1 = u_input.a.x;
    var var_2 = arg_0.e;
    var var_3 = 748f;
    var_0 = arg_0.b.zz;
    return firstTrailingBit(countOneBits(1u));
}

fn func_1() -> i32 {
    var var_0 = func_3(Struct_5(func_2(vec4<f32>(461f, _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(min(272f, 213f)), _wgslsmith_f_op_f32(-1056f - -463f)), vec2<f32>(1532f, 484f), u_input.c), vec3<bool>(true, true, true), max(-1i, 1i), ~vec3<u32>(~u_input.c, ~u_input.a.x, u_input.a.x >> (47175u % 32u)), Struct_1(~(-vec2<i32>(u_input.b.x, 1i)), 1569f, ~(vec3<u32>(4294967295u, 43597u, u_input.c) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))))));
    let var_1 = abs(vec2<i32>(_wgslsmith_sub_i32(-23186i & u_input.b.x, u_input.b.x) >> ((7215u ^ u_input.a.x) % 32u), ~min(-22800i, 16829i) >> ((reverseBits(u_input.a.x) >> (91291u % 32u)) % 32u)));
    var_0 = ~112217u;
    var var_2 = all(select(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, select(true, true, false)), vec4<bool>(all(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, false, true, true)), true, true), !all(vec2<bool>(false, false))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, false), select(true, true, false))));
    var_2 = any(select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false)), u_input.a.x >= u_input.a.x, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), true)));
    return 0i & ~u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = u_input.b.x;
    var var_1 = ~49776u & ~u_input.c;
    var_1 = ~_wgslsmith_div_u32(~2457u, ~reverseBits(_wgslsmith_div_u32(u_input.a.x, arg_1.x)));
    let var_2 = _wgslsmith_mult_i32(var_0 >> (~(arg_1.x >> (_wgslsmith_add_u32(u_input.c, 68960u) % 32u)) % 32u), var_0 & -var_0);
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, ~arg_1.yx), vec2<u32>(arg_1.x, ~54335u));
    return Struct_3(-1i, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(999f, -1758f, -1116f, 317f), vec4<f32>(1898f, 287f, -1005f, 1255f), vec4<bool>(true, false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(532f * 670f), 1641f, 1f, -304f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1188f, -1041f, -715f, 1939f) - vec4<f32>(-1000f, 913f, -1614f, 189f)), vec4<f32>(-780f, -687f, 532f, 290f)))), _wgslsmith_f_op_f32(ceil(1f)) < -427f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(~(~(u_input.b.x & u_input.b.x)) <= 44953i, u_input.a.x > abs(u_input.c));
    let var_1 = func_4(-func_1(), select(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.c, 11933u), 1u, u_input.c), vec3<u32>(~u_input.c, 63998u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.a)), vec3<bool>(var_0.x, u_input.c == u_input.c, var_0.x)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(110559u, 1u, u_input.a.x) >> ((vec3<u32>(0u, u_input.a.x, 1u) | vec3<u32>(16996u, u_input.c, u_input.c)) % vec3<u32>(32u)), ~min(vec3<u32>(u_input.c, u_input.a.x, u_input.c), vec3<u32>(1u, u_input.c, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(-var_1.b), true);
    let var_3 = select(vec2<bool>((var_0.x && var_0.x) != func_4(2147483647i, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.c), vec3<u32>(u_input.a.x, 1u, u_input.a.x))).c, all(!(!vec4<bool>(true, var_2.c, false, var_0.x)))), vec2<bool>(true, true), var_0);
    let var_4 = Struct_5(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_1.b.x), -1242f, var_1.b.x, -616f), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(600f, 1501f, var_1.b.x, 1073f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.b.x))), 17435u | _wgslsmith_mult_u32(4294967295u, u_input.c)).b, ~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) >> (vec3<u32>(96884u, 0u, 4294967295u) % vec3<u32>(32u))) << ((vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(63166u, 117635u, u_input.c)) % vec3<u32>(32u)), 0i), !(!select(vec3<bool>(var_1.c, var_1.c, var_1.c), !vec3<bool>(var_1.c, false, false), vec3<bool>(true, false, var_0.x))), 8239i, _wgslsmith_mod_vec3_u32(~max(~vec3<u32>(u_input.a.x, u_input.a.x, 34032u), ~vec3<u32>(1u, 0u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, 9589u, 1u), vec3<u32>(7871u, 38463u, u_input.c)), abs(~vec3<u32>(u_input.a.x, 23629u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1u) << (vec3<u32>(u_input.c, 34095u, u_input.c) % vec3<u32>(32u)), select(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 56929u, 72072u), vec3<bool>(true, true, false))))), Struct_1(~select(u_input.b.yx, u_input.b.yx, false) | ((u_input.b.zy ^ vec2<i32>(var_1.a, 2147483647i)) & abs(u_input.b.xz)), _wgslsmith_f_op_f32(718f - var_1.b.x), func_2(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_2.b.x, -1547f), vec2<f32>(var_1.b.x, -1655f), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, u_input.a.x, 13777u, 0u)), vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x))).b.c));
    var var_5 = 622f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(countOneBits(4294967295u) | u_input.a.x), ~(~func_2(var_4.a.a, var_2.b.yw, u_input.c).c.x)), vec3<u32>(_wgslsmith_div_u32(1u, var_4.a.b.c.x), _wgslsmith_clamp_u32(var_4.d.x, ~1u, 14246u), _wgslsmith_mult_u32(4294967295u, ~max(var_4.e.c.x, u_input.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b.yz * vec2<f32>(-1537f, var_4.a.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 344f) * var_2.b.yy))))))), -1047f);
}

