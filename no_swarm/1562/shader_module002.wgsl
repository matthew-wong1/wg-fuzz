struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1612f, 483f, 542f), vec3<f32>(-645f, 914f, -1196f), vec3<f32>(-1455f, 1504f, 727f), vec3<f32>(241f, -997f, -835f), vec3<f32>(-1632f, 2405f, 130f));

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(80650u, 18372u), vec2<u32>(28597u, 0u), vec2<u32>(43114u, 27689u), vec2<u32>(0u, 1u), vec2<u32>(62234u, 43727u), vec2<u32>(32480u, 0u), vec2<u32>(17225u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8397u, 27592u), vec2<u32>(0u, 0u), vec2<u32>(20961u, 0u), vec2<u32>(15722u, 38919u), vec2<u32>(8201u, 6031u), vec2<u32>(18164u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 51162u), vec2<u32>(120477u, 23080u), vec2<u32>(4294967295u, 1u), vec2<u32>(126181u, 0u), vec2<u32>(65576u, 4294967295u));

var<private> global2: array<u32, 26> = array<u32, 26>(0u, 8417u, 76965u, 0u, 4294967295u, 61160u, 9921u, 4294967295u, 0u, 29919u, 34451u, 16619u, 1u, 1u, 4126u, 22519u, 1u, 0u, 70390u, 102327u, 4294967295u, 1u, 36332u, 0u, 62416u, 56896u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    global1 = array<vec2<u32>, 20>();
    global2 = array<u32, 26>();
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, abs(15794u), u_input.b.x, select(global2[_wgslsmith_index_u32(4294967295u, 26u)], 5627u, arg_1))), max(~(~abs(vec4<u32>(u_input.b.x, 1u, 4294967295u, global2[_wgslsmith_index_u32(0u, 26u)]))), vec4<u32>(65909u, 4294967295u, _wgslsmith_div_u32(arg_0.c.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]) << (_wgslsmith_dot_vec3_u32(u_input.b.xyz, u_input.b.xxx) % 32u), 1u)));
    global2 = array<u32, 26>();
    var_0 = arg_2.x;
    return select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!arg_1, all(vec3<bool>(true, arg_1, true)))), vec2<bool>(arg_1, all(!vec4<bool>(true, arg_1, false, arg_1))), all(!(!vec2<bool>(false, arg_1)))), vec2<bool>(true || !(!arg_1), any(vec4<bool>(arg_1, true, arg_1, arg_1)) & all(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), true))), select(select(vec2<bool>(true, true), !vec2<bool>(arg_1, arg_1), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), true), select(vec2<bool>(false, false), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), false)), !select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), arg_1), all(vec2<bool>(any(vec2<bool>(false, arg_1)), true))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    global2 = array<u32, 26>();
    global0 = array<vec3<f32>, 5>();
    return global1[_wgslsmith_index_u32(arg_1.a.x, 20u)] << (select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x) & ~vec2<u32>(36083u, arg_1.a.x), vec2<u32>(global2[_wgslsmith_index_u32(~1u, 26u)], ~arg_2)), ~vec2<u32>(~4294967295u, 80425u), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(Struct_2(arg_1, vec4<i32>(arg_1.b.x, arg_1.b.x, 0i, u_input.d), Struct_1(arg_1.a, vec4<i32>(-2875i, arg_1.b.x, u_input.a, arg_1.b.x))), true, u_input.b.yy, u_input.d), false), all(vec4<bool>(true, true, true, false)))) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 26>();
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, reverseBits(4294967295u)) ^ (func_2(-1616f, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<i32>(u_input.c, u_input.d, u_input.a, u_input.c)), global2[_wgslsmith_index_u32(u_input.b.x, 26u)]) >> (firstTrailingBit(vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(0u, 26u)])) % vec2<u32>(32u))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx)), ~(~(-abs(vec4<i32>(-37033i, -1968i, u_input.d, -15414i)))));
    var_0 = Struct_1(~var_0.a, reverseBits(~var_0.b | reverseBits(vec4<i32>(11643i, u_input.d, -15746i, var_0.b.x))) & vec4<i32>(~min(2147483647i, u_input.d), _wgslsmith_sub_i32(8057i, i32(-1i) * -47111i), -2147483647i, u_input.c));
    var var_1 = Struct_5(vec3<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, global2[_wgslsmith_index_u32(select(u_input.b.x, var_0.a.x, true), 26u)]), 26u)], 26u)], reverseBits(1u), u_input.b.x), 24355u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 26u)], 26u)], _wgslsmith_mult_u32(u_input.b.x, abs(var_0.a.x)))), Struct_2(Struct_1(countOneBits(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81077u, 26u)], 26u)], global2[_wgslsmith_index_u32(2992u, 26u)])), vec4<i32>(var_0.b.x, select(0i, 21908i, true), -54996i, firstTrailingBit(-9664i))), ~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -39993i, u_input.c, -12386i), var_0.b)), Struct_1(reverseBits(vec2<u32>(0u, 1023u)), _wgslsmith_mult_vec4_i32(var_0.b >> (vec4<u32>(var_0.a.x, 1u, var_0.a.x, 22476u) % vec4<u32>(32u)), vec4<i32>(1i, 0i, u_input.d, -14181i)))), vec3<u32>(abs(u_input.b.x >> (4294967295u % 32u)), 1u, ~reverseBits(4294967295u)) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyx, vec3<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 26u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 26u)])), global2[_wgslsmith_index_u32(1u, 26u)] ^ 0u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -823f), Struct_1(var_0.a, var_0.b), 4294967295u).x, (var_0.a.x >> (u_input.b.x % 32u)) >> (u_input.b.x % 32u)) % vec3<u32>(32u)));
    global0 = array<vec3<f32>, 5>();
    return var_1.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> vec4<bool> {
    global0 = array<vec3<f32>, 5>();
    var var_0 = arg_0.b;
    var var_1 = vec4<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true && select(any(vec2<bool>(false, true)), false, all(vec3<bool>(true, true, false))), true);
    var var_2 = vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, var_1.x)), all(!vec2<bool>(var_1.x, true)), all(vec4<bool>(var_1.x, false, var_1.x, false)), any(vec3<bool>(false, var_1.x, true)))), var_1.x);
    var var_3 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1103f, arg_1.a.x) + -755f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, -298f)))))));
    return vec4<bool>(any(var_1.xyw), !select(all(var_1.zz), var_1.x & all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), any(!vec2<bool>(var_1.x, true))), var_1.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 5>();
    var var_0 = select(select(!func_4(func_1(), Struct_4(global0[_wgslsmith_index_u32(23296u, 5u)], u_input.a)), vec4<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), all(vec4<bool>(true, true, true, true)), u_input.c > (u_input.d & 0i)), func_4(func_1(), Struct_4(global0[_wgslsmith_index_u32(1u, 5u)], abs(0i)))), !vec4<bool>(true, true, true, all(func_3(Struct_2(Struct_1(vec2<u32>(1u, u_input.b.x), vec4<i32>(3654i, u_input.c, u_input.d, u_input.a)), vec4<i32>(u_input.d, u_input.a, -37537i, -24435i), Struct_1(vec2<u32>(0u, 2885u), vec4<i32>(-2147483647i, 1877i, u_input.c, -66090i))), false, vec2<u32>(4294967295u, 13275u), -4471i))), func_4(Struct_1(max(~vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)], 26u)], 26u)]), func_1().a), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 20575i, -1i, u_input.c), vec4<i32>(u_input.d, 0i, u_input.d, 21157i)), u_input.d, u_input.d, 22417i)), Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, -2001f, 1000f) * global0[_wgslsmith_index_u32(19212u, 5u)]), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37912u, 26u)], 5u)], select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(230f, 1278f, -478f, -210f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -465f, -782f, 187f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1105f, 552f, -1000f, 414f), vec4<f32>(1369f, 115f, -914f, -596f)))), vec4<bool>(var_0.x, var_0.x, select(true, var_0.x, true), var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2701f, 1000f, -1174f, -570f))))), vec4<bool>(true, var_0.x, all(vec3<bool>(true, true, true)), var_0.x)));
    var_0 = select(select(vec4<bool>(all(vec2<bool>(true, true)), true, !var_0.x, false), vec4<bool>(false, var_0.x, func_1().a.x < ~36903u, false), vec4<bool>(true, any(!vec3<bool>(var_0.x, var_0.x, false)), var_0.x, any(!vec4<bool>(var_0.x, true, var_0.x, false)))), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, false)), true), vec4<bool>(true, func_3(Struct_2(Struct_1(u_input.b.zy, vec4<i32>(-1i, u_input.a, 53799i, u_input.a)), vec4<i32>(-2147483647i, u_input.c, u_input.a, 0i), Struct_1(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 20u)], vec4<i32>(u_input.c, u_input.a, u_input.a, 0i))), true, ~vec2<u32>(4294967295u, 24071u), -1i).x, select(var_0.x, -1i <= u_input.a, all(vec2<bool>(var_0.x, true))), any(var_0.zyx)), !(!vec4<bool>(var_0.x, true, false, var_0.x))), true);
    var var_2 = ~(~vec2<u32>(52807u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28658u, 26u)], 26u)], 26u)]) >> ((u_input.b.zw >> (vec2<u32>(firstLeadingBit(0u), ~4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = var_1.x;
    var var_4 = func_1();
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(-21561i), ~(-23038i)));
}

