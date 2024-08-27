struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = 473f;

var<private> global2: array<i32, 29> = array<i32, 29>(-12772i, 14619i, 0i, -31587i, -11242i, -8695i, i32(-2147483648), 1i, 10211i, -71188i, -24444i, i32(-2147483648), 11497i, 2147483647i, 0i, 10173i, 2147483647i, 0i, 1i, -1i, 8181i, 32570i, 1i, -1i, 2147483647i, -1i, -9561i, -23505i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_3 {
    global1 = -501f;
    global1 = arg_0.x;
    return Struct_3(firstLeadingBit(i32(-1i) * -global0.x), 0i, false);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_1(arg_1, vec4<f32>(2755f, -1809f, 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(105f))), 289f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(303f, 949f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(184f, -1116f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, -773f) + vec2<f32>(-1344f, 216f))))), ~vec4<u32>(_wgslsmith_add_u32(61889u, 0u), 31089u, arg_2, arg_2 | arg_2) | vec4<u32>(1u, ~25895u, min(4294967295u, 19183u), ~(arg_2 & u_input.a)), ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), 4294967295u, _wgslsmith_mod_u32(24189u, 4294967295u))));
    global1 = _wgslsmith_f_op_f32(floor(var_0.b.x));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, arg_0.x, i32(-1i) * -13621i), -global0.zyw, select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global0.zxw, _wgslsmith_sub_vec3_i32(arg_0.xwx, vec3<i32>(-18693i, 6634i, arg_0.x))), -firstLeadingBit(arg_0.ywy))), _wgslsmith_add_i32(arg_0.x, global2[_wgslsmith_index_u32(25662u, 29u)] >> (_wgslsmith_mult_u32(arg_2, ~var_0.e.x) % 32u)));
    let var_2 = ~var_0.e.x | ~_wgslsmith_dot_vec4_u32(var_0.d, ~_wgslsmith_mult_vec4_u32(var_0.d, vec4<u32>(1u, 25646u, 4294967295u, arg_2)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(min(var_0.c.x, -2295f)), true));
    return vec4<i32>(select(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(arg_0, arg_0, vec4<bool>(arg_1, arg_1, false, arg_1)), ~vec4<i32>(var_1.a.x, -2147483647i, global2[_wgslsmith_index_u32(16483u, 29u)], -2147483647i)), -2147483647i), firstLeadingBit(arg_3 << (u_input.a % 32u)), any(vec3<bool>(false, arg_1, false)) || true), ~(~(~_wgslsmith_sub_i32(0i, global0.x))), _wgslsmith_mult_i32(~_wgslsmith_add_i32(-2147483647i, 0i), _wgslsmith_div_i32(reverseBits(var_1.b), 1i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-global0.x), global0.x), 0i & _wgslsmith_mod_i32(firstLeadingBit(30335i), arg_3), -reverseBits(_wgslsmith_dot_vec2_i32(global0.ww, arg_0.yx))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    let var_0 = func_2(vec3<f32>(471f, -819f, _wgslsmith_f_op_f32(floor(129f))), -vec2<i32>(global0.x, -(~(-18635i))));
    let var_1 = ~max((~arg_0.x | arg_0.x) ^ ~4294967295u, arg_0.x);
    var var_2 = !arg_1;
    global0 = func_3(~_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-6789i, -36029i, 12330i, var_0.a)), -_wgslsmith_div_vec4_i32(vec4<i32>(-22836i, -9681i, -1i, 21811i), vec4<i32>(-8983i, 1i, global2[_wgslsmith_index_u32(var_1, 29u)], -9007i))), true, ~u_input.a, global2[_wgslsmith_index_u32(firstTrailingBit(0u), 29u)]);
    var_2 = 12458i > select(~_wgslsmith_sub_i32(-19049i, global0.x), max(6408i >> (_wgslsmith_mod_u32(0u, arg_0.x) % 32u), var_0.a), any(!vec4<bool>(true, true, var_0.c, true)));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.e.x)), arg_0.b.b.x)) + _wgslsmith_f_op_f32(exp2(arg_0.b.b.x))));
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_div_u32(arg_0.b.d.x, 77036u));
    var var_1 = vec3<u32>(u_input.a, 0u, arg_0.b.d.x);
    var var_2 = Struct_4(true, arg_0.b, arg_0.c, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -arg_0.d, _wgslsmith_mult_vec4_i32(min(~vec4<i32>(3884i, arg_0.c.a.x, 1i, global0.x), ~vec4<i32>(1i, arg_0.c.a.x, 2147483647i, 17664i)), _wgslsmith_div_vec4_i32(arg_0.d, arg_0.d) & vec4<i32>(arg_2.a, arg_0.c.b, global0.x, global0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, -1604f))))), arg_0.b.b.xw));
    var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 26397u, 28690u), ~(var_2.b.d.wxy ^ var_2.b.e));
    return -34836i;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    global2 = array<i32, 29>();
    global2 = array<i32, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.x, arg_3.x, -110f, arg_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1260f, arg_3.x, 1062f, arg_3.x))))))));
    var var_1 = arg_2;
    var var_2 = Struct_2(arg_2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-25927i, global0.x, arg_2.b, global2[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<i32>(2147483647i, global0.x, arg_1, -140i)) >> (u_input.a % 32u), global0.x), _wgslsmith_clamp_i32(func_1(vec4<u32>(4294967295u, u_input.a, 1u, 49898u) | vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), true, arg_2).b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, arg_2.a.x), arg_2.a.x, countOneBits(arg_1)), (arg_1 ^ 2147483647i) << (u_input.a % 32u))));
    return Struct_3(0i, var_2.a.x, !(var_1.b == _wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(51135u, 29u)], arg_2.a.x, global0.x, 33728i), vec4<i32>(38740i, -45697i, global2[_wgslsmith_index_u32(u_input.a, 29u)], -1804i) ^ vec4<i32>(var_1.b, -31111i, -3488i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, abs(-(~global0.x))), -1i);
    var var_1 = func_5(true, _wgslsmith_sub_i32(firstLeadingBit(1i), -(~global2[_wgslsmith_index_u32(u_input.a, 29u)])) ^ -func_4(Struct_4(true, Struct_1(true, vec4<f32>(189f, 1837f, -212f, -2276f), vec2<f32>(-363f, 1000f), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a)), Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], 39841i, -27682i), global0.x), vec4<i32>(global0.x, 0i, global2[_wgslsmith_index_u32(4294967295u, 29u)], -1i), vec2<f32>(1000f, 447f)), _wgslsmith_add_u32(7873u, 52290u), func_1(vec4<u32>(30589u, 53903u, u_input.a, u_input.a), false, Struct_2(vec3<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a, 29u)], global0.x), -2147483647i)), all(vec4<bool>(false, false, false, true))), Struct_2(firstTrailingBit(vec3<i32>(-1i, min(1i, 0i), 1i)), _wgslsmith_dot_vec2_i32(-global0.wz << (select(vec2<u32>(3444u, 0u), vec2<u32>(9667u, u_input.a), false) % vec2<u32>(32u)), global0.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-577f - -1520f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1029f, 800f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1355f, 112f) - vec2<f32>(511f, 653f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, 1597f))))));
    var_1 = Struct_3(-47851i, var_1.a, false);
    let var_2 = select(vec3<bool>(true, var_1.c, true), !select(!(!vec3<bool>(var_1.c, var_1.c, var_1.c)), select(!vec3<bool>(var_1.c, var_1.c, false), select(vec3<bool>(false, false, var_1.c), vec3<bool>(var_1.c, true, true), vec3<bool>(true, true, var_1.c)), vec3<bool>(var_1.c, var_1.c, var_1.c)), select(!vec3<bool>(var_1.c, var_1.c, var_1.c), select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, var_1.c, false), false), all(vec4<bool>(false, var_1.c, false, var_1.c)))), vec3<bool>(false, false, true));
    let var_3 = select(vec3<i32>(global2[_wgslsmith_index_u32(24392u, 29u)] ^ _wgslsmith_clamp_i32(var_1.a, -1i, ~11287i), i32(-1i) * -10591i, ~(_wgslsmith_sub_i32(var_1.b, 1i) ^ _wgslsmith_div_i32(var_1.a, var_1.a))), global0.yyz, select(!select(select(var_2, var_2, true), var_2, !var_2.x), vec3<bool>(false, true, func_1(vec4<u32>(u_input.a, u_input.a, 0u, 44975u) & vec4<u32>(u_input.a, 5271u, u_input.a, 4294967295u), true, Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(46216u, 29u)], 0i, -2147483647i), global0.x)).c), var_2));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2165f))), !all(select(vec2<bool>(var_2.x, var_1.c), var_2.zx, var_1.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, abs(vec4<i32>(16442i, _wgslsmith_add_i32(1i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 1423u, 22262u), 29u)]), func_3(vec4<i32>(0i, global0.x, var_3.x, 22937i) | vec4<i32>(2147483647i, global0.x, 2147483647i, var_3.x), all(vec4<bool>(false, false, var_1.c, var_2.x)), ~u_input.a, global2[_wgslsmith_index_u32(~61171u, 29u)]).x, -var_3.x | var_1.a)), -max(~var_3, _wgslsmith_sub_vec3_i32(func_3(vec4<i32>(var_3.x, 1i, 21051i, global0.x), false, 1u, global2[_wgslsmith_index_u32(0u, 29u)]).xwx, var_3 | vec3<i32>(17959i, -3372i, 2147483647i))), func_3(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], -56576i, var_1.b, global0.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], global0.x, global2[_wgslsmith_index_u32(1u, 29u)], -14157i)), -(global2[_wgslsmith_index_u32(16355u, 29u)] >> (15725u % 32u)), -16129i, func_4(Struct_4(false, Struct_1(false, vec4<f32>(434f, 210f, -267f, -138f), vec2<f32>(-627f, -401f), vec4<u32>(1u, 77105u, u_input.a, u_input.a), vec3<u32>(38830u, u_input.a, u_input.a)), Struct_2(vec3<i32>(var_3.x, 1i, global0.x), var_1.a), vec4<i32>(18195i, 7904i, -1i, global2[_wgslsmith_index_u32(40543u, 29u)]), vec2<f32>(187f, 438f)), u_input.a, Struct_3(-2147483647i, -5638i, var_2.x), true) ^ -2147483647i), all(vec2<bool>(!var_2.x, true)), u_input.a, 49376i).x, _wgslsmith_mult_i32(-11657i, -12709i));
}

