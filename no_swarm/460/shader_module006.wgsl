struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41093u;

var<private> global1: array<vec2<u32>, 16>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(19179u, 80857u), vec2<u32>(256u, 64892u), vec2<u32>(42291u, 1u), vec2<u32>(59251u, 22946u), vec2<u32>(1u, 1u), vec2<u32>(43474u, 65285u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_3(!vec4<bool>(!(!arg_0.a.a.x), arg_0.a.a.x, true, false), arg_0.b);
    var var_1 = var_0;
    let var_2 = Struct_2(2147483647i, u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_vec2_f32(-var_0.b.a)))));
    let var_3 = 63834u;
    var_1 = var_0;
    return vec3<i32>(-1i, 2147483647i, select(var_2.a, ~0i ^ var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-829f)))) != -614f));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    global3 = array<vec2<u32>, 6>();
    let var_0 = false;
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 42548i), ~arg_0.yz), global2.x, 2147483647i, max(_wgslsmith_mod_i32(0i, arg_0.x), i32(-1i) * -73121i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.a, -2147483647i, 2147483647i, 0i)), vec4<i32>(arg_0.x, arg_2.a, arg_2.a, global2.x)), vec4<i32>(_wgslsmith_mod_i32(arg_3.x, -2147483647i), global2.x ^ 40347i, -32997i, -1i)));
    let var_2 = Struct_4(Struct_3(select(!(!vec4<bool>(false, var_0, var_0, var_0)), !(!vec4<bool>(true, var_0, false, var_0)), !vec4<bool>(var_0, var_0, false, var_0)), arg_2.c), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.a * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-449f, arg_2.c.a.x)))))));
    var var_3 = var_2.a.a.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1219f, 1237f, var_0)) * -358f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-597f, 478f))))) > _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -579f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> i32 {
    let var_0 = func_4(-((vec3<i32>(-1i, arg_1.x, 1i) | vec3<i32>(global2.x, 2147483647i, arg_1.x)) | func_3(arg_0)) & -((vec3<i32>(-11440i, global2.x, 1i) | vec3<i32>(-2147483647i, global2.x, arg_1.x)) | ~vec3<i32>(arg_1.x, global2.x, global2.x)), Struct_1(arg_0.a.b.a), Struct_2(1i, select(_wgslsmith_sub_u32(8646u, ~4294967295u), ~u_input.a, !arg_0.a.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.a)))), abs(arg_1));
    let var_1 = Struct_3(vec4<bool>(var_0, !any(arg_0.a.a), false, all(select(vec4<bool>(var_0, true, true, true), vec4<bool>(true, var_0, arg_0.a.a.x, var_0), false))), arg_0.b);
    return global2.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_5(Struct_2(firstTrailingBit(~global2.x) << (~_wgslsmith_div_u32(u_input.a, 1u) % 32u), abs(~u_input.b) | ~firstTrailingBit(0u), Struct_1(vec2<f32>(179f, -1000f))));
    global2 = vec2<i32>(_wgslsmith_div_i32(abs(reverseBits(var_0.a.a | var_0.a.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, 1i, global2.x, -1i), ~vec4<i32>(-2147483647i, 1i, 2147483647i, 14718i)), 1i, var_0.a.a)), firstLeadingBit(-1i));
    let var_1 = -24515i;
    global2 = countOneBits(vec2<i32>(~func_2(Struct_4(Struct_3(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), var_0.a.c), Struct_1(vec2<f32>(-2462f, var_0.a.c.a.x))), vec2<i32>(-1174i, var_1)), var_1));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1710f, var_0.a.c.a.x) - vec2<f32>(822f, var_0.a.c.a.x)))), var_0.a.c.a));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> bool {
    var var_0 = arg_3.a;
    var var_1 = Struct_2(arg_1, 0u, func_1(!(!select(arg_3.a.a.xzx, vec3<bool>(false, arg_3.a.a.x, var_0.a.x), var_0.a.xwz))));
    let var_2 = _wgslsmith_mod_i32(arg_1, select(_wgslsmith_mult_i32(2261i, -28978i) << (_wgslsmith_mod_u32(arg_2, var_1.b) % 32u), (global2.x ^ var_1.a) >> (arg_2 % 32u), all(arg_3.a.a.wxy)) << (_wgslsmith_div_u32(~(~u_input.b), _wgslsmith_sub_u32(arg_0, u_input.b) << (~0u % 32u)) % 32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a)), vec2<f32>(-1330f, _wgslsmith_f_op_f32(-arg_3.a.b.a.x))) * vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.x - var_0.b.a.x)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, 596f)), var_3)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.a))), vec2<f32>(_wgslsmith_f_op_f32(-562f - 225f), 2604f)));
    return all(select(select(arg_3.a.a.wwx, arg_3.a.a.wyw, !var_0.a.x), vec3<bool>(true, false, true), firstLeadingBit(1u) >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(18911u, u_input.b), vec2<u32>(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), func_5(countOneBits(1285u), 19030i, abs(~(~u_input.b)), Struct_4(Struct_3(vec4<bool>(true, true, true, true), func_1(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1688f))))));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(global2.x, global2.x)), reverseBits(vec2<i32>(-10257i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 1i), vec2<i32>(global2.x, global2.x) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))))));
    global0 = 0u;
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(var_1.x, 58313i, 2147483647i), vec3<i32>(global2.x, var_1.x, 2147483647i))), vec3<i32>(global2.x, -2147483647i, global2.x)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2.x, 7935i, -26149i)), ~countOneBits(vec3<i32>(-20616i, -1i, var_1.x)))), select(-global2.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, var_1.x, global2.x, 0i)), -vec4<i32>(var_1.x, 6025i, 1i, 2147483647i)), select(select(2147483647i, var_1.x, true), _wgslsmith_mod_i32(var_1.x, 30447i), true)), true));
    var_1 = vec2<i32>(-global2.x, i32(-1i) * -141i);
    let var_3 = var_0.x;
    var var_4 = var_1.x >> (countOneBits(u_input.b) % 32u);
    global1 = array<vec2<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(firstTrailingBit(128806u), (u_input.a ^ 60907u) >> (1u % 32u), u_input.a | ~86046u)), ~(vec3<u32>(u_input.b, ~u_input.a, firstLeadingBit(u_input.a)) & ~(~vec3<u32>(0u, 1u, u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1287f + 357f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(692f * -172f))), _wgslsmith_f_op_f32(trunc(426f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-731f, -1146f, -435f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-109f, 2041f, -195f), vec3<f32>(-1018f, 1000f, -434f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(530f, -551f, 154f), vec3<f32>(-1000f, 857f, 1370f))))), firstLeadingBit(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -361f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 634f) + vec2<f32>(-295f, 1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, 1638f) - vec2<f32>(-166f, 771f))))));
}

