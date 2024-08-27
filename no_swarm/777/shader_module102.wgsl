struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(823f, -1059f, 0u, Struct_2(vec2<bool>(false, false), Struct_1(true, vec4<u32>(0u, 0u, 0u, 0u), vec2<f32>(-1347f, 441f), vec4<i32>(-1i, 14299i, 1i, 0i)), Struct_1(false, vec4<u32>(13131u, 112133u, 18262u, 24765u), vec2<f32>(-1348f, 1463f), vec4<i32>(2147483647i, -73272i, i32(-2147483648), -11117i)), 1592f, Struct_1(false, vec4<u32>(4294967295u, 1u, 25150u, 0u), vec2<f32>(1156f, 1732f), vec4<i32>(2147483647i, -1i, 2147483647i, 32913i))), vec4<bool>(false, true, true, true));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-global0.b)) - global3.c.x), -1993f, min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.b.x, 40798u), vec2<u32>(1u, 53755u)), global0.d.b.b.zw), vec2<u32>(4294967295u, 4294967295u)), global0.d.b.b.x), Struct_2(global2.e.yw, Struct_1(true, ~(global3.b & global3.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, arg_2.x) * arg_2.zy))), vec4<i32>(-1i, select(11802i, 1i, false), abs(6366i), -46951i & global0.d.b.d.x)), Struct_1(true, vec4<u32>(_wgslsmith_div_u32(44045u, 1u), ~global3.b.x, 2522u, firstLeadingBit(1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -535f) + vec2<f32>(-125f, global2.d.b.c.x))), max(vec4<i32>(31562i, global2.d.e.d.x, -31631i, global2.d.b.d.x), vec4<i32>(global0.d.b.d.x, 1i, global3.d.x, -35483i)) >> ((vec4<u32>(40504u, 20804u, u_input.c, global2.d.c.b.x) ^ vec4<u32>(u_input.d, u_input.a.x, global0.d.e.b.x, global0.c)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(round(304f)), Struct_1(4294967295u >= min(27313u, global2.c), global3.b | global0.d.b.b, arg_2.yy, global2.d.e.d)), vec4<bool>(any(select(global0.e, select(global0.e, vec4<bool>(true, global3.a, true, false), true), !global2.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * _wgslsmith_f_op_f32(-696f + arg_0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-381f, arg_0.x)), !any(global2.e.yy), global3.a));
    global1 = -557f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.c.x));
    var var_2 = Struct_2(select(vec2<bool>(global2.d.a.x, 122f < var_1), !global2.d.a, !any(select(vec3<bool>(global2.d.e.a, true, var_0.d.c.a), global0.e.xyw, var_0.e.zxy))), var_0.d.c, var_0.d.c, -1418f, Struct_1(all(select(global0.e.yw, var_0.d.a, global2.d.a.x)), (global0.d.c.b >> (reverseBits(vec4<u32>(u_input.d, global0.d.b.b.x, 12700u, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(17615u, var_0.d.b.b.x, 72724u, u_input.a.x), var_0.d.c.b, _wgslsmith_add_vec4_u32(global3.b, global2.d.e.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.xz - vec2<f32>(1128f, -290f)), var_0.d.e.c))), abs(max(var_0.d.c.d & vec4<i32>(-2907i, -34776i, 26447i, global0.d.c.d.x), vec4<i32>(var_0.d.e.d.x, 0i, global2.d.e.d.x, global2.d.e.d.x) & vec4<i32>(30564i, var_0.d.c.d.x, -2147483647i, global3.d.x)))));
    let var_3 = Struct_3(-1177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(317f)) * _wgslsmith_f_op_f32(-global2.b)), 59047u, global2.d, vec4<bool>(true, (false != all(var_0.e.wyx)) || global3.a, true, var_2.c.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_3.a)))))));
}

fn func_2() -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(2147483647i, -1i), global3.d.x, 0i, global2.d.e.d.x);
    let var_1 = vec2<bool>(true == all(global0.d.a), all(vec3<bool>(~var_0.x != (i32(-1i) * -4063i), global2.d.a.x, _wgslsmith_f_op_f32(2216f - 863f) != _wgslsmith_f_op_f32(-global3.c.x))));
    var var_2 = Struct_1(~1i <= ((-global0.d.b.d.x | ~23732i) ^ 0i), abs(vec4<u32>(25826u, _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), ~44691u), global2.c, firstLeadingBit(_wgslsmith_mult_u32(global0.c, 0u)))), vec2<f32>(864f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f - -550f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, global2.d.c.c.x, -280f), 709f, vec3<f32>(global2.b, global3.c.x, -407f))))))), ~(-global0.d.b.d));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.c.x - global3.c.x), global3.c.x, _wgslsmith_f_op_f32(1000f * 458f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, var_2.c.x, -471f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, global2.b, -130f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, global0.a, var_2.c.x) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.d, global3.c.x, global0.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.x, global0.a, global0.b), vec3<f32>(global0.d.e.c.x, 356f, -1186f), global2.e.ywx)))))));
    var var_4 = global2.d;
    return 0i;
}

fn func_1(arg_0: bool) -> f32 {
    global3 = Struct_1(!global2.d.e.a, select(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(global0.c), ~1u, global0.c, global3.b.x), select(global2.d.e.b, vec4<u32>(4294967295u, 4294967295u, u_input.c, global3.b.x), global2.d.e.a)), global3.b, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, _wgslsmith_div_f32(global0.d.c.c.x, global2.b))), global0.d.b.c), vec4<i32>(~(-2147483647i), global0.d.e.d.x, _wgslsmith_add_i32(func_2() ^ global2.d.c.d.x, global0.d.c.d.x), -90558i));
    let var_0 = countOneBits(~vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global0.d.c.b.x, 1u), u_input.a), _wgslsmith_div_u32(global2.d.b.b.x, 16532u))) << (global3.b.xzz % vec3<u32>(32u));
    var var_1 = ~(~global0.c);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * global0.d.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.b)))), true)) + -1171f));
    var var_2 = global3.d.zxy;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(-538f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(global3.c.x, global2.a, -138f), vec3<f32>(-775f, global2.a, global3.c.x)), global2.d.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, 651f, -237f)))), true))), -209f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2040f, _wgslsmith_f_op_f32(func_3(vec3<f32>(-933f, global2.a, -321f), 328f, vec3<f32>(531f, 296f, global0.d.b.c.x)))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1704f, _wgslsmith_f_op_f32(select(2027f, -2452f, global3.a)))))));
    let var_1 = global2.d.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(~(~global2.d.b.b.x), global3.b.x), min(0u, 5075u), 43857u, firstTrailingBit(0u)));
}

