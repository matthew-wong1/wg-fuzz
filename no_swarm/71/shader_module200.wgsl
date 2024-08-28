struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_4;

var<private> global2: vec3<i32> = vec3<i32>(-19600i, 0i, 0i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_4(true);
    var var_0 = _wgslsmith_dot_vec3_i32(~abs(reverseBits(-vec3<i32>(u_input.e, u_input.c.x, u_input.e))), max(-vec3<i32>(_wgslsmith_sub_i32(global2.x, global2.x), -32150i, _wgslsmith_mult_i32(global2.x, -1981i)), vec3<i32>(30317i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c.x, global2.x), ~1i, select(0i, 1i, true)), ~(~global2.x))));
    let var_1 = !vec3<bool>(true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), !vec3<bool>(true, global1.a, global1.a), false)), select(global1.a, true, true));
    let var_2 = Struct_1(~abs(_wgslsmith_mod_i32(u_input.e, u_input.e)) ^ -_wgslsmith_dot_vec2_i32(u_input.c, firstLeadingBit(vec2<i32>(-15837i, 0i))), ~global2.x, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-9953i, _wgslsmith_add_i32(1i, 1i)), u_input.e), _wgslsmith_add_i32(firstLeadingBit(abs(global2.x)), u_input.c.x), u_input.e), min(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(45631u, global0.x, 1u, 0u), vec4<u32>(u_input.b, global0.x, 4294967295u, 1u)), u_input.b, 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.b, 85641u), reverseBits(u_input.d)), u_input.b, min(0u, u_input.a) << (~global0.x % 32u))));
    let var_3 = vec2<bool>(false, !(!(!any(vec4<bool>(true, global1.a, true, var_1.x)))));
    return vec4<u32>(var_2.d.x, var_2.d.x, 30422u, ~(global0.x >> (~max(0u, 1u) % 32u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(global0.ww, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), arg_0.d.xy >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), min(u_input.d.zx, arg_0.d.yy))), _wgslsmith_div_vec2_u32(~(~global0.wz), abs(arg_0.d.yx) << (u_input.d.yz % vec2<u32>(32u)))), ~firstLeadingBit(~countOneBits(vec2<u32>(u_input.b, arg_0.d.x))));
    global0 = ~(~(func_3() | select(vec4<u32>(arg_0.d.x, 4294967295u, 25630u, 15876u), vec4<u32>(27268u, var_0.x, 0u, arg_0.d.x), true)));
    global2 = arg_0.c;
    let var_1 = Struct_2(1u, false, arg_0, global1.a || global1.a, Struct_1(-arg_0.c.x, -15182i, arg_0.c, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.x, 11342u, arg_0.d.x), ~vec3<u32>(72142u, u_input.d.x, 4294967295u)) | _wgslsmith_clamp_vec3_u32(~global0.zzz, u_input.d, vec3<u32>(4294967295u, arg_0.d.x, 0u))));
    let var_2 = Struct_4(true != (4294967295u > _wgslsmith_mod_u32(~u_input.d.x, ~global0.x)));
    return arg_0.d.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = ~(-u_input.c.x);
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(~u_input.a, u_input.d.x), 1u, 4294967295u, 0u) & vec4<u32>(~func_2(Struct_1(global2.x, -1i, vec3<i32>(-29004i, 2147483647i, arg_0.a.x), global0.ywy)), global0.x, firstTrailingBit(countOneBits(1852u)), 29431u));
    let var_2 = Struct_4(!(!(!global1.a)) & global1.a);
    let var_3 = var_2;
    var var_4 = select(vec4<bool>(arg_1.x, true, false, all(vec4<bool>(!var_3.a, var_3.a, true, true))), select(!select(vec4<bool>(var_3.a, false, global1.a, var_3.a), select(vec4<bool>(true, var_2.a, arg_0.b, var_3.a), vec4<bool>(var_2.a, true, true, false), vec4<bool>(true, true, var_2.a, arg_1.x)), select(vec4<bool>(global1.a, arg_0.b, true, true), vec4<bool>(false, arg_1.x, var_2.a, arg_0.b), vec4<bool>(false, arg_1.x, arg_1.x, arg_0.b))), !vec4<bool>(var_2.a, var_3.a, any(vec4<bool>(arg_0.b, false, false, global1.a)), false), !(!vec4<bool>(var_2.a, true, true, true))), global1.a);
    return Struct_1(_wgslsmith_mult_i32(global2.x, global2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_0.a.x), vec2<i32>(u_input.c.x, global2.x)), _wgslsmith_clamp_i32(64007i, 0i, 1341i)), max(vec3<i32>(33540i, -1i, global2.x), vec3<i32>(12883i, 1i, arg_0.a.x)) << ((var_1.wyw | vec3<u32>(global0.x, u_input.d.x, var_1.x)) % vec3<u32>(32u))), ~vec3<i32>(_wgslsmith_add_i32(u_input.e, arg_0.a.x), 0i, -1i)), -reverseBits(~vec3<i32>(-34378i, global2.x, 4834i)) | ((abs(vec3<i32>(global2.x, 0i, arg_0.a.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.x, u_input.d.x), u_input.d) % vec3<u32>(32u))) >> (vec3<u32>(u_input.b, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 0u), global0.wzw)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.d.x), ~vec3<u32>(48036u, u_input.b, u_input.b))), firstLeadingBit(vec3<u32>(var_1.x, min(global0.x, global0.x), 39875u << (var_1.x % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_3(vec2<i32>(~global2.x, _wgslsmith_div_i32(~(~(-18329i)), 20419i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-277f, 146f), vec2<f32>(-1767f, 785f)))))));
    global0 = vec4<u32>(u_input.d.x, 54068u, ~_wgslsmith_mod_u32(u_input.a, global0.x), arg_1.e.d.x);
    let var_1 = countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(~_wgslsmith_add_i32(var_0.a.x, -2147483647i)), -2147483647i ^ -_wgslsmith_div_i32(arg_1.c.c.x, -1i), var_0.a.x));
    var var_2 = max(-4116i, arg_1.e.a);
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, ~arg_1.e.a, -var_1), _wgslsmith_sub_vec3_i32((arg_1.e.c & vec3<i32>(var_0.a.x, u_input.e, 0i)) & ~arg_0.c, arg_1.e.c)) ^ 38042i;
    return ~(~abs(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.d) >> ((func_4(func_1(Struct_3(u_input.c, false, vec2<f32>(1000f, 1430f)), select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a))), Struct_2(global0.x, false, Struct_1(0i, u_input.e, vec3<i32>(global2.x, u_input.c.x, 0i), global0.yxx), global1.a, func_1(Struct_3(global2.yz, false, vec2<f32>(-713f, -1000f)), vec2<bool>(global1.a, global1.a)))) ^ _wgslsmith_add_vec3_u32(func_3().zxz, vec3<u32>(_wgslsmith_mod_u32(35031u, 1317u), select(u_input.d.x, 1u, global1.a), _wgslsmith_mult_u32(global0.x, 1u)))) % vec3<u32>(32u));
    var var_1 = (vec4<u32>(func_1(Struct_3(vec2<i32>(global2.x, global2.x), global1.a, vec2<f32>(102f, 1000f)), !vec2<bool>(true, global1.a)).d.x, _wgslsmith_div_u32(global0.x, _wgslsmith_add_u32(1u, var_0.x)), global0.x, 50874u) >> (vec4<u32>(func_3().x, var_0.x, 0u, 1u) % vec4<u32>(32u))) >> (~select(~(vec4<u32>(global0.x, var_0.x, u_input.d.x, 0u) >> (vec4<u32>(u_input.a, u_input.b, u_input.b, var_0.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4981u, global0.x, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 27543u, 4294967295u, 0u), vec4<u32>(u_input.d.x, u_input.b, 4294967295u, u_input.a))), all(!vec4<bool>(global1.a, false, global1.a, global1.a))) % vec4<u32>(32u));
    var var_2 = Struct_2(~11495u, !(!(!global1.a) && all(vec3<bool>(true, true, true))), func_1(Struct_3(abs(global2.xx), true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, 104f))))), !select(vec2<bool>(global1.a, global1.a), select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a)), all(vec2<bool>(global1.a, global1.a)))), !global1.a, func_1(Struct_3(u_input.c, global1.a || !global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-873f, 722f) * vec2<f32>(-1683f, 338f)))), vec2<bool>(!global1.a, all(vec3<bool>(false, true, global1.a)))));
    let var_3 = select(_wgslsmith_clamp_i32(global2.x, -_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, -2147483647i, 8388i, var_2.e.a), vec4<i32>(61350i, global2.x, global2.x, var_2.e.b) >> (vec4<u32>(var_2.e.d.x, 0u, 52544u, global0.x) % vec4<u32>(32u))), select(19040i | global2.x, min(1i, func_1(Struct_3(var_2.c.c.xz, global1.a, vec2<f32>(161f, -1000f)), vec2<bool>(true, false)).b), !var_2.b)), ~(-2147483647i), var_2.d);
    global0 = ~vec4<u32>(50969u, ~max(4294967295u, global0.x), ~global0.x, ~4294967295u);
    var var_4 = 1u;
    var var_5 = Struct_2(~25568u, all(!select(select(vec2<bool>(var_2.d, true), vec2<bool>(false, global1.a), global1.a), vec2<bool>(false, var_2.d), global1.a)), var_2.e, !(true && var_2.b), func_1(Struct_3(global2.yy, !all(vec4<bool>(global1.a, var_2.b, true, false)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, -1325f) - vec2<f32>(-1000f, 401f))))), !vec2<bool>(select(global1.a, global1.a, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-625f - -751f), _wgslsmith_f_op_f32(f32(-1f) * -589f), !any(vec2<bool>(global1.a, false)))))), var_1.yw, -2147483647i, _wgslsmith_div_vec3_i32(-(vec3<i32>(var_2.c.a, 0i, -2147483647i) | var_5.c.c), var_2.e.c), ~4294967295u);
}

