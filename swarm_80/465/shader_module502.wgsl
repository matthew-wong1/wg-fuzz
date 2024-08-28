struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(979f, -848f, -179f), vec3<f32>(-874f, 1272f, -1265f));

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    return abs(-firstLeadingBit(firstLeadingBit(u_input.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, select(global2.a.d.x, 1u, !(global2.a.b == global2.a.b)), select(~(global2.a.e.x >> (u_input.e % 32u)), ~(~arg_2.a.e.x), false || (arg_0.a || true)), ~(~1u)), _wgslsmith_div_vec4_u32(vec4<u32>(~(arg_2.a.d.x >> (16943u % 32u)), u_input.d, arg_0.d.x, (2848u >> (arg_0.d.x % 32u)) >> (arg_2.a.d.x % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.d.x, 4294967295u, arg_0.d.x, 4294967295u), ~vec4<u32>(0u, 7070u, global2.a.e.x, arg_2.a.d.x)), countOneBits(vec4<u32>(arg_0.e.x, arg_0.d.x, arg_0.d.x, global2.a.d.x)) ^ (vec4<u32>(arg_2.a.e.x, 75260u, 4294967295u, 45051u) | vec4<u32>(global2.a.d.x, 44754u, global2.a.e.x, 4294967295u)), (vec4<u32>(4294967295u, 4294967295u, global2.a.e.x, 0u) << (vec4<u32>(u_input.e, 15136u, arg_0.d.x, u_input.d) % vec4<u32>(32u))) << ((vec4<u32>(0u, global2.a.e.x, global2.a.e.x, global2.a.e.x) ^ vec4<u32>(u_input.e, global2.a.e.x, 50803u, u_input.d)) % vec4<u32>(32u)))));
    var var_1 = Struct_3(vec3<i32>(arg_1, u_input.b.x, ~1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, arg_1), 54925i, arg_1, 2147483647i), -vec4<i32>(u_input.a.x >> (global2.a.d.x % 32u), arg_1, firstTrailingBit(arg_1), arg_1 >> (arg_0.d.x % 32u)), vec4<i32>(-2147483647i, -20483i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, arg_1, u_input.a.x), 93710i), (u_input.c ^ 2147483647i) & (arg_1 & arg_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + arg_2.a.c), 1000f, arg_0.c) + vec3<f32>(-897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c)), -1386f)));
    var_1 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(countOneBits(-39479i), 0i), _wgslsmith_div_i32(~2147483647i, -u_input.b.x), func_3()), ~vec3<i32>(max(-8749i, -6397i), var_1.b.x, firstLeadingBit(arg_1))), var_1.b, global1[_wgslsmith_index_u32(1u, 2u)]);
    var_1 = Struct_3(_wgslsmith_div_vec3_i32(var_1.a, var_1.b.ywy), max(_wgslsmith_add_vec4_i32(-var_1.b, vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, var_1.a.x), arg_1, -292i, ~var_1.b.x)), select(var_1.b, ~(~vec4<i32>(arg_1, u_input.c, -28081i, var_1.b.x)), vec4<bool>(true, arg_2.a.a, false, true))), var_1.c);
    var var_2 = Struct_1(!((_wgslsmith_mod_i32(49130i, -22815i) << (1u % 32u)) != select(i32(-1i) * -68935i, -var_1.b.x, select(false, arg_2.a.b, false))), global2.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))))), var_0.zwy, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, var_0.x, arg_0.e.x, arg_2.a.e.x), vec4<u32>(var_0.x, 39542u, global2.a.d.x, u_input.e)), firstTrailingBit(42360u)), reverseBits(vec2<u32>(var_0.x, arg_0.e.x)), ~firstLeadingBit(vec2<u32>(0u, arg_2.a.e.x))) ^ arg_2.a.e);
    return !(!(!select(vec3<bool>(true, global2.a.b, arg_2.a.b), vec3<bool>(false, global2.a.a, arg_0.a), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, true, var_2.a), vec3<bool>(arg_0.b, false, var_2.a)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = func_4(global2.a, _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_add_i32(1i >> (1u % 32u), abs(58226i)) | _wgslsmith_clamp_i32(u_input.b.x, func_3(), ~u_input.b.x)), Struct_2(global0[_wgslsmith_index_u32(1u & (_wgslsmith_mod_u32(59320u, arg_0) >> (0u % 32u)), 26u)]));
    var var_1 = u_input.c;
    global1 = array<vec3<f32>, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-984f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -791f) + -321f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.c)))), -177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -215f))))) * vec4<f32>(1068f, _wgslsmith_f_op_f32(exp2(global2.a.c)), global2.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(min(global2.a.c, 753f))), _wgslsmith_f_op_f32(sign(-1788f)))));
    global1 = array<vec3<f32>, 2>();
    return Struct_1(!(!var_0.x), !(~(u_input.b.x >> (u_input.d % 32u)) > min(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), u_input.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1577f + _wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2214f)) + 1358f))), global2.a.c)), select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, firstLeadingBit(0u), 81301u << (u_input.e % 32u)), ~(~global2.a.d)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 1u, ~21259u), firstLeadingBit(~global2.a.d)), vec3<bool>(select(true, false, true), false, any(vec3<bool>(global2.a.a, var_0.x, false)))), abs(global2.a.d.zx >> (~(vec2<u32>(42258u, u_input.d) & vec2<u32>(u_input.d, 49924u)) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = abs(abs(func_2(~max(0u, arg_3.e.x)).e.x));
    let var_1 = global1[_wgslsmith_index_u32(24691u, 2u)];
    var var_2 = global2.a.a;
    var_2 = !(!(!arg_3.b));
    var var_3 = firstLeadingBit(~9332u);
    return _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(global2.a.d.x, u_input.d), _wgslsmith_mult_u32(arg_1.a.d.x, firstLeadingBit(4294967295u))), vec2<u32>(arg_1.a.d.x, min(func_2(4294967295u).e.x, u_input.e))) & vec2<u32>(~_wgslsmith_clamp_u32(global2.a.d.x, 4294967295u, 21793u) | arg_0.d.x, ~abs(4634u & u_input.e));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_u32(1u, ~abs(_wgslsmith_mod_u32(global2.a.e.x, 7936u)) ^ 0u);
    global1 = array<vec3<f32>, 2>();
    var_0 = 0u;
    let var_1 = !select(vec2<bool>(true, _wgslsmith_f_op_f32(select(-1693f, 292f, false)) < global2.a.c), !select(select(arg_0.zz, vec2<bool>(global2.a.a, arg_0.x), vec2<bool>(global2.a.b, arg_0.x)), !arg_0.xy, vec2<bool>(false, global2.a.a)), arg_0.yy);
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(7765u, firstTrailingBit(0u))), _wgslsmith_sub_vec2_u32(reverseBits(arg_3.a.e), func_5(func_2(u_input.d), arg_3, var_1, global0[_wgslsmith_index_u32(u_input.d, 26u)]))));
    return arg_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 26>();
    global1 = array<vec3<f32>, 2>();
    global2 = Struct_2(global0[_wgslsmith_index_u32(0u ^ select(global2.a.e.x, global2.a.e.x, !global2.a.b), 26u)]);
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e & 37117u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1803f, global2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(global2.a.b, true, global2.a.b), vec4<f32>(global2.a.c, 944f, global2.a.c, global2.a.c), 2147483647i, Struct_2(Struct_1(global2.a.b, false, global2.a.c, global2.a.d, global2.a.d.xx)))))), _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.d), 2u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a.c, global2.a.c, 1546f), global1[_wgslsmith_index_u32(3259u, 2u)]))), select(!vec3<bool>(global2.a.b, false, global2.a.a), !vec3<bool>(global2.a.a, global2.a.b, true), true))), any(select(vec3<bool>(global2.a.b, global2.a.b, global2.a.a), !vec3<bool>(true, global2.a.b, global2.a.a), select(vec3<bool>(global2.a.b, true, false), vec3<bool>(global2.a.a, false, global2.a.a), true))))), u_input.c);
}

