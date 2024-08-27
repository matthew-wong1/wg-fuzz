struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(0i, 5199i, 27558i, 1i), vec4<i32>(-24026i, 30369i, -35356i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -20218i), vec4<i32>(0i, 11537i, 65231i, -1i), vec4<i32>(1i, -22175i, 2147483647i, i32(-2147483648)), vec4<i32>(49637i, -16010i, -8745i, i32(-2147483648)));

var<private> global1: Struct_1 = Struct_1(true, vec3<u32>(1u, 100730u, 4294967295u), vec4<f32>(-402f, -689f, -1000f, 1089f), false, vec4<u32>(24233u, 0u, 26747u, 34807u));

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(30508u, 73488u), vec2<u32>(4294967295u, 44574u), vec2<u32>(97080u, 1u), vec2<u32>(80382u, 36005u), vec2<u32>(1u, 40442u), vec2<u32>(1u, 25771u), vec2<u32>(1u, 34903u), vec2<u32>(4294967295u, 89841u), vec2<u32>(4954u, 0u), vec2<u32>(51934u, 0u), vec2<u32>(48093u, 0u), vec2<u32>(3750u, 82720u), vec2<u32>(0u, 4294967295u), vec2<u32>(29118u, 1u), vec2<u32>(38211u, 4294967295u), vec2<u32>(4294967295u, 44982u), vec2<u32>(4294967295u, 51322u), vec2<u32>(33600u, 0u), vec2<u32>(78819u, 0u), vec2<u32>(4294967295u, 30784u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 144208u), vec2<u32>(1351u, 10861u), vec2<u32>(5451u, 11760u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(all(select(vec2<bool>(global1.a, global1.d), vec2<bool>(global1.d, true), vec2<bool>(true, true))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 1u, 40807u), vec3<u32>(65521u, global3.e.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.c.x, global1.c.x, -302f, 878f), vec4<f32>(global3.c.x, 417f, 651f, 1281f), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, global1.c.x, 671f, -823f) * vec4<f32>(global1.c.x, 1153f, global1.c.x, global1.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global1.c.x, global3.c.x, global3.c.x)))), true, vec4<u32>(~u_input.c.x, 46429u, ~1u, 1u));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 6u)];
    var var_2 = Struct_1(false, vec3<u32>(global1.e.x, _wgslsmith_mult_u32(select(var_0.e.x, var_0.b.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, 4294967295u), vec3<u32>(20377u, 31008u, global1.b.x))) & 37811u, u_input.c.x), var_0.c, all(select(select(vec4<bool>(true, global3.d, global1.d, var_0.d), vec4<bool>(global1.a, global1.d, global1.a, global3.a), vec4<bool>(true, global3.a, global3.d, false)), vec4<bool>(var_0.a, global1.a, global1.a, global3.d), true)) | global1.a, ~_wgslsmith_mod_vec4_u32(global3.e, ~vec4<u32>(var_0.b.x, u_input.d.x, 21840u, 4560u)));
    var var_3 = !select(vec2<bool>(false, true), !(!select(vec2<bool>(global3.a, var_0.a), vec2<bool>(true, false), true)), var_2.a);
    var var_4 = vec4<i32>(~2147483647i, 1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_1.yxw, var_1.zxw), var_1.x)), firstTrailingBit(25389i), min(-_wgslsmith_sub_i32(u_input.b, var_1.x), u_input.b)), -(-var_1.x & -_wgslsmith_div_i32(1i, u_input.b)));
    return _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(-1i, -1i, var_4.x) | var_4.xxz, min(vec3<i32>(u_input.b, -5557i, var_4.x), var_4.zwy)) ^ -var_4.xwy, -firstLeadingBit(abs(vec3<i32>(u_input.b, var_4.x, u_input.b)))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.yxy, select(var_1.xxy, vec3<i32>(2147483647i, var_4.x, var_1.x) >> (var_2.b % vec3<u32>(32u)), all(vec2<bool>(var_0.a, global3.a)))), var_4.wzx));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = ~(_wgslsmith_add_vec3_i32(reverseBits(arg_2.xzy), func_3()) & select(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.wzx, vec3<i32>(-27471i, arg_2.x, -2147483647i)), vec3<i32>(arg_2.x, 0i, u_input.b)), -arg_2.wzx, arg_0.wyw));
    var var_1 = Struct_1(false & select(false, arg_3.x, any(select(arg_3.xy, arg_0.yz, arg_1))), vec3<u32>(global1.b.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(global1.e.wxy, global1.e.zyw)), _wgslsmith_mod_vec3_u32(global3.e.wxx, ~vec3<u32>(u_input.d.x, 82888u, global3.e.x))), u_input.a.x), global3.c, any(vec3<bool>(arg_1, !select(arg_3.x, false, global3.d), true)), global3.e);
    return var_0.x;
}

fn func_1() -> vec3<bool> {
    let var_0 = vec3<i32>(~func_2(!(!vec4<bool>(global3.a, global3.d, false, global3.a)), global1.a, -(~global0[_wgslsmith_index_u32(global1.e.x, 6u)]), !vec4<bool>(true, global3.a, global3.d, global1.d)), -u_input.b, -1868i >> (max(_wgslsmith_div_u32(75219u, u_input.c.x), 71746u) % 32u));
    var var_1 = global3.e;
    let var_2 = Struct_1(!global1.a, vec3<u32>(select(_wgslsmith_clamp_u32(17145u, global3.e.x, 1u), 0u, select(global1.a, false, true)), u_input.d.x, max(17265u, 1u)) & global3.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c * _wgslsmith_f_op_vec4_f32(global3.c - _wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(global1.c.x, global3.c.x, -439f, global3.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global1.c, vec4<f32>(-357f, 2431f, global3.c.x, global3.c.x))))) * global3.c)), global3.a, global1.e);
    global0 = array<vec4<i32>, 6>();
    var var_3 = var_0;
    return !select(vec3<bool>(true, var_2.d, (var_2.d | global1.d) & false), !select(vec3<bool>(global3.a, global1.d, global1.a), vec3<bool>(true, global1.d, true), !vec3<bool>(global1.a, global1.a, true)), select(!(!vec3<bool>(var_2.a, true, global1.a)), !vec3<bool>(true, global1.d, false), select(!vec3<bool>(global1.d, true, global3.d), select(vec3<bool>(false, true, true), vec3<bool>(global3.d, var_2.a, var_2.a), var_2.d), vec3<bool>(global3.d, global1.a, false))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: i32) -> StorageBuffer {
    global1 = Struct_1(any(!(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, global3.d)))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 3309u, 1u) >> (vec3<u32>(111722u, global1.e.x, global1.e.x) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 4294967295u, 14519u))), countOneBits(vec3<u32>(global3.b.x >> (0u % 32u), _wgslsmith_add_u32(9179u, global1.e.x), global3.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1121f, 1980f, -711f, 423f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2182f, -1072f, global3.c.x, global1.c.x))))), select(select(false, global3.a, false) == true, global1.a, !arg_1.x) != all(vec4<bool>(global1.a & arg_1.x, true, global3.a, arg_1.x && true)), global1.e);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.zyz) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -794f, _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_vec3_f32(-global3.c.www))));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(min(max(_wgslsmith_add_i32(u_input.b, -5068i), _wgslsmith_mod_i32(-1054i, 1i)), firstLeadingBit(_wgslsmith_sub_i32(-7686i, -1i))), func_3().x), vec2<i32>(i32(-1i) * -1i, -select(~712i, min(4775i, arg_2), false || global3.d)));
    global1 = Struct_1(global3.d, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(34841u, 31511u, global1.e.x)), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(global3.e.x, global1.e.x), global1.b.x << (4294967295u % 32u))), global1.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(492f, var_0.x, global3.c.x, arg_0.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-834f, global3.c.x, -1170f, global1.c.x), vec4<f32>(715f, global3.c.x, -511f, -704f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1472f, 2228f, !global3.d)))) <= 1087f, ~(~countOneBits(~global1.e)));
    global0 = array<vec4<i32>, 6>();
    return StorageBuffer(arg_2, vec3<i32>(firstLeadingBit(arg_2), arg_2, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, -u_input.b, countOneBits(-21259i)), -2615i)), global3.b, vec3<u32>(34567u, 2355u, max(global1.e.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, global3.e.x), _wgslsmith_add_u32(4294967295u, global1.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 25>();
    var var_0 = firstLeadingBit(countOneBits(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, u_input.b)))));
    global0 = array<vec4<i32>, 6>();
    let var_1 = _wgslsmith_add_vec2_i32(-abs(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.b)), vec2<i32>(-1i) * -(~(-vec2<i32>(9256i, var_0.x))));
    global4 = array<vec2<u32>, 25>();
    let x = u_input.a;
    s_output = func_4(vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1552f), _wgslsmith_div_f32(-205f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.x, global1.c.x) - -1149f))), vec2<bool>(global1.d, any(select(select(vec3<bool>(true, global3.d, global1.d), vec3<bool>(global3.a, global1.d, global1.a), false), func_1(), select(vec3<bool>(global3.d, global1.d, true), vec3<bool>(true, global1.a, false), false)))), firstTrailingBit(var_1.x));
}

