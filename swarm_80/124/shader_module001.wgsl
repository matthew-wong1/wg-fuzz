struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: array<i32, 17> = array<i32, 17>(18087i, 51787i, 2147483647i, i32(-2147483648), 1203i, -1i, 1i, 0i, -32136i, 16829i, 14199i, 0i, 23753i, 0i, -55119i, 14542i, 26222i);

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, true, false, true, false, false, true, true, true, false, true, true, false, false, true, false, false, true, false, true, true, false, false, true, false);

var<private> global3: i32 = 6380i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(select(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(31822u, 26u)], global2[_wgslsmith_index_u32(49136u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]))), !select(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 26u)], false, false), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(2670u, 26u)], true, global2[_wgslsmith_index_u32(42650u, 26u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(117738u, 26u)], false, false)), vec4<bool>(!global2[_wgslsmith_index_u32(abs(15937u), 26u)], false, false, global2[_wgslsmith_index_u32(abs(abs(4294967295u)), 26u)])), !select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], true, global2[_wgslsmith_index_u32(6598u, 26u)]), !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 26u)]), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(25344u, 26u)], true), vec4<bool>(global2[_wgslsmith_index_u32(56551u, 26u)], false, true, true), global2[_wgslsmith_index_u32(0u, 26u)])), vec4<bool>(true, !global2[_wgslsmith_index_u32(71126u, 26u)], false, any(vec3<bool>(false, false, true))), global2[_wgslsmith_index_u32(min(4294967295u, 0u) >> (1u % 32u), 26u)]), global2[_wgslsmith_index_u32(~0u, 26u)], u_input.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f - -345f) * _wgslsmith_div_f32(678f, -840f))) * 1f), _wgslsmith_f_op_f32(max(766f, _wgslsmith_f_op_f32(step(131f, 821f)))));
    var var_2 = ~(u_input.c.x >> (select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u, global2[_wgslsmith_index_u32(firstLeadingBit(19536u), 26u)] || true) % 32u));
    var var_3 = Struct_1(select(var_0.a, select(var_0.b, var_0.b, var_0.b), vec4<bool>(any(vec2<bool>(var_0.c, var_0.c)), any(!var_0.b), true, _wgslsmith_div_f32(-1000f, var_1.x) != var_1.x)), vec4<bool>(!any(!var_0.b.yx), any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~11011u, _wgslsmith_mult_u32(1u, 4294967295u)), 10u)]), global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~22445u, _wgslsmith_div_u32(4294967295u, 1u)), 1u, true), 26u)], all(!(!vec2<bool>(var_0.a.x, global2[_wgslsmith_index_u32(39495u, 26u)])))), false, -(vec4<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -18944i, var_0.d.x), vec3<i32>(-3133i, 1i, 35727i)), -1i, -global1[_wgslsmith_index_u32(1u, 17u)]) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 8860u, 65349u, 66099u), vec4<u32>(42275u, 555u, 60185u, 4294967295u))) % vec4<u32>(32u))));
    var_2 = -_wgslsmith_dot_vec3_i32(reverseBits(var_3.d.xww >> (~vec3<u32>(26731u, 33955u, 4294967295u) % vec3<u32>(32u))), -(~_wgslsmith_sub_vec3_i32(vec3<i32>(-43076i, -1i, u_input.e), vec3<i32>(1i, var_0.d.x, 19807i))));
    return select(vec4<bool>(!global2[_wgslsmith_index_u32(reverseBits(select(19131u, 1u, false)), 26u)], true, true, true), select(vec4<bool>(true || select(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, var_3.b.x), all(var_0.b.wy), true, var_0.a.x), !var_3.a, var_0.a.x), vec4<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 1u), 1u), firstTrailingBit(abs(vec2<u32>(48525u, 10401u)))), 26u)], all(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)], false), var_3.b.yzz, vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, var_0.c)), vec3<bool>(true, var_0.c, var_3.a.x), vec3<bool>(true, var_3.a.x, false)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, any(vec4<bool>(global2[_wgslsmith_index_u32(18804u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], true)), !global2[_wgslsmith_index_u32(28152u, 26u)]), !vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(~(~0u), 26u)] && all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], false, global2[_wgslsmith_index_u32(1u, 26u)]))), func_3(), !func_3().x, u_input.a);
    var var_1 = vec3<u32>(countOneBits(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(11795u, 0u), ~vec2<u32>(5747u, 1875u)))), 0u, ~1u);
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, abs(25777u), ~(~(~21212u))), reverseBits(firstLeadingBit(~(~vec3<u32>(var_1.x, 27435u, var_1.x)))), ~vec3<u32>(34916u, var_1.x, var_1.x));
    var var_2 = Struct_1(vec4<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(7695u & var_1.x, max(0u, var_1.x)), 26u)], false, !(!global2[_wgslsmith_index_u32(~var_1.x, 26u)]), var_0.c), var_0.a, false, var_0.d);
    var_1 = vec3<u32>(83726u, var_1.x, var_1.x);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(1u, 17u)]);
    var_0 = func_2(1i);
    let var_1 = ~min(~3557u, ~1u);
    var_0 = Struct_1(!arg_1.a, var_0.a, true, var_0.d);
    let var_2 = Struct_1(!var_0.a, vec4<bool>(any(arg_1.a.xx), !(any(vec4<bool>(global2[_wgslsmith_index_u32(7516u, 26u)], var_0.c, false, true)) && false), -arg_2.x <= ~(-u_input.d.x), true), false, var_0.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1762f + -673f), _wgslsmith_f_op_f32(f32(-1f) * -456f), global2[_wgslsmith_index_u32(~48908u, 26u)])), Struct_1(!vec4<bool>(true, global2[_wgslsmith_index_u32(11526u, 26u)], true, true), !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(4294967295u, 26u)], -vec4<i32>(-21674i, global1[_wgslsmith_index_u32(56192u, 17u)], -18786i, u_input.e)), u_input.a.zwy)))));
    var var_1 = abs(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_mod_i32(u_input.b, 6368i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 28103u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 40163u, 1u)), 17u)], -u_input.d.x))) & u_input.a;
    global1 = array<i32, 17>();
    global3 = u_input.b;
    let var_2 = vec2<f32>(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -618f, var_0, 784f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1278f, -839f, 132f, var_0) + vec4<f32>(-1000f, 365f, -103f, var_0))))))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 19188u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) >> (~(~(~vec4<u32>(1u, 4294967295u, 1u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1454f + _wgslsmith_f_op_f32(-var_2.x)))), vec4<u32>(firstTrailingBit(4294967295u), firstTrailingBit(~_wgslsmith_mult_u32(38411u, 9764u)), _wgslsmith_mult_u32(96661u, 1u), abs(firstLeadingBit(14867u))));
}

