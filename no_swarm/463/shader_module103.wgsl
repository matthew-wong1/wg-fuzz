struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(54746u, 0u, 0u), Struct_1(vec2<u32>(26706u, 4212u))), Struct_2(vec3<u32>(4294967295u, 47746u, 1u), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(vec3<u32>(3948u, 26826u, 4294967295u), Struct_1(vec2<u32>(0u, 0u))), Struct_2(vec3<u32>(1u, 81996u, 1u), Struct_1(vec2<u32>(1u, 73403u))), Struct_2(vec3<u32>(4294967295u, 67489u, 16890u), Struct_1(vec2<u32>(0u, 34218u))), Struct_2(vec3<u32>(404u, 27200u, 36678u), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(vec3<u32>(1u, 4294967295u, 18845u), Struct_1(vec2<u32>(3853u, 71384u))), Struct_2(vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec2<u32>(1u, 0u))), Struct_2(vec3<u32>(1u, 8354u, 10108u), Struct_1(vec2<u32>(9003u, 15623u))), Struct_2(vec3<u32>(46418u, 0u, 4294967295u), Struct_1(vec2<u32>(26396u, 4294967295u))), Struct_2(vec3<u32>(33434u, 0u, 1u), Struct_1(vec2<u32>(6062u, 4294967295u))), Struct_2(vec3<u32>(4294967295u, 0u, 15589u), Struct_1(vec2<u32>(4294967295u, 74859u))), Struct_2(vec3<u32>(4294967295u, 2985u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 76734u))), Struct_2(vec3<u32>(31447u, 21782u, 4294967295u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<u32>(61319u, 10874u, 4294967295u), Struct_1(vec2<u32>(31319u, 0u))), Struct_2(vec3<u32>(22417u, 1u, 0u), Struct_1(vec2<u32>(18226u, 11260u))), Struct_2(vec3<u32>(1u, 43467u, 4887u), Struct_1(vec2<u32>(71268u, 1033u))), Struct_2(vec3<u32>(49838u, 16973u, 88604u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec2<u32>(1u, 787u))), Struct_2(vec3<u32>(32006u, 4294967295u, 0u), Struct_1(vec2<u32>(4294967295u, 37039u))), Struct_2(vec3<u32>(4294967295u, 120708u, 4294967295u), Struct_1(vec2<u32>(0u, 5445u))), Struct_2(vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec2<u32>(1u, 25894u))), Struct_2(vec3<u32>(4294967295u, 0u, 20661u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<u32>(24901u, 10617u, 24082u), Struct_1(vec2<u32>(15810u, 4294967295u))), Struct_2(vec3<u32>(1u, 1u, 5013u), Struct_1(vec2<u32>(1u, 65911u))));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 0u));

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 78065u);

var<private> global4: array<f32, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = Struct_1(select(u_input.e.zy, vec2<u32>(global3.x ^ 4294967295u, global2.a.x) << (arg_0.a.b.a % vec2<u32>(32u)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true))));
    global0 = array<u32, 1>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78591u, 1u)], 20u)], global4[_wgslsmith_index_u32(1u, 20u)], global4[_wgslsmith_index_u32(global3.x, 20u)])))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1778f, -1430f, global4[_wgslsmith_index_u32(u_input.b.x, 20u)])))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(1u, 20u)], 749f, global4[_wgslsmith_index_u32(0u, 20u)]))))), true)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-160f, global4[_wgslsmith_index_u32(61236u, 20u)])))), global4[_wgslsmith_index_u32(firstTrailingBit(reverseBits(42539u)), 20u)], _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(4294967295u, 20u)])), true))));
    var var_2 = select(vec4<bool>(true, true, !select(false, false, true) | true, true), !(!vec4<bool>(all(vec3<bool>(true, true, false)), false, true, true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, select(true, all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true))), select(true, -514f != global4[_wgslsmith_index_u32(var_0.a.x, 20u)], global4[_wgslsmith_index_u32(0u, 20u)] < -185f), all(vec4<bool>(true, true, false, true)) | false), vec4<bool>(any(vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true, true)));
    var var_3 = Struct_2(abs(countOneBits(~arg_0.a.a)), arg_0.a.b);
    return vec3<i32>(-24330i, -firstLeadingBit(select(~25175i, _wgslsmith_add_i32(1i, 37348i), true)), _wgslsmith_div_i32(-4863i, (~(-21021i) & _wgslsmith_dot_vec4_i32(vec4<i32>(17335i, 54772i, -2147483647i, -4826i), vec4<i32>(21576i, -1i, 1i, 58330i))) >> (_wgslsmith_mod_u32(87602u, var_0.a.x) % 32u)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(~40955u, reverseBits(_wgslsmith_add_u32(global3.x, u_input.c) ^ ~27478u), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.d, 1u)], 4294967295u)), Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(46225u, 55162u), u_input.b, vec2<bool>(false, true)), abs(u_input.b)))));
    let var_1 = func_3(Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_clamp_u32(~20523u, 35660u, var_0.a.x)), 25u)]));
    var var_2 = Struct_3(~u_input.e, ~vec2<u32>(4294967295u, global3.x));
    var var_3 = _wgslsmith_div_u32(36291u, ~min(1u, 1u));
    var var_4 = global1[_wgslsmith_index_u32(~1u, 25u)];
    return Struct_3(~u_input.e | u_input.e, var_4.b.a);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    let var_0 = -_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, -12808i), select(vec4<i32>(1i, 1i, -57726i, 2147483647i), vec4<i32>(43425i, 1i, 35787i, -5376i), vec4<bool>(false, true, true, true))), _wgslsmith_add_i32(1i >> (global3.x % 32u), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-1i, 0i, -1i)))));
    global3 = max(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(~arg_1.wx), vec2<u32>(global0[_wgslsmith_index_u32(22333u, 1u)], 1u) | _wgslsmith_mult_vec2_u32(global2.a, vec2<u32>(arg_3.b.x, 0u)), arg_3.b), ~vec2<u32>(arg_0, arg_3.b.x >> (4294967295u % 32u))), vec2<u32>(~(~0u << (global3.x % 32u)), ~max(1u, 129152u)));
    global2 = Struct_1(~arg_3.a.zw);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-943f + _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(90798u, 20u)]))), 1f))));
    global1 = array<Struct_2, 25>();
    return all(vec2<bool>((var_0 << (arg_1.x % 32u)) <= _wgslsmith_add_i32(select(var_0, var_0, true), i32(-1i) * -1i), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    let var_0 = !(!all(vec3<bool>(true, true, false)) & true) && ((_wgslsmith_f_op_f32(sign(145f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 20u)])))) && !func_4(arg_1.a.a.x, u_input.e, arg_1, func_2(-16198i)));
    var var_1 = _wgslsmith_sub_u32(8734u, global3.x) ^ 68112u;
    global4 = array<f32, 20>();
    global4 = array<f32, 20>();
    global2 = Struct_1(vec2<u32>(reverseBits(9105u) ^ abs(arg_2.a.x), u_input.e.x) ^ ~(max(vec2<u32>(global2.a.x, 1231u), arg_2.b.a) ^ firstTrailingBit(vec2<u32>(global2.a.x, 0u))));
    return abs(0i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(true, false, false)) && all(vec3<bool>(true, false, false)), !select(false, true, false)));
    var var_1 = func_2(arg_0.x);
    let var_2 = all(var_0);
    let var_3 = ~countOneBits(global2.a);
    var var_4 = ~abs(vec2<u32>(4294967295u, 4294967295u));
    return Struct_3(var_1.a | (_wgslsmith_sub_vec4_u32(~vec4<u32>(6245u, 5740u, 29336u, 1u), u_input.e) | var_1.a), firstTrailingBit((vec2<u32>(40971u, u_input.b.x) >> (countOneBits(global2.a) % vec2<u32>(32u))) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(46086u, global0[_wgslsmith_index_u32(4294967295u, 1u)]), var_3) << (vec2<u32>(global0[_wgslsmith_index_u32(var_4.x, 1u)], var_1.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(-1i, -(select(-1i, 1i, false) >> ((101608u | global0[_wgslsmith_index_u32(0u, 1u)]) % 32u)), _wgslsmith_sub_i32(-max(20191i, 1i), _wgslsmith_mod_i32(firstLeadingBit(-17778i), -23050i)), ~26135i), vec2<i32>(_wgslsmith_div_i32(func_1(vec2<i32>(28456i, 1i), Struct_4(Struct_2(vec3<u32>(global3.x, global0[_wgslsmith_index_u32(1u, 1u)], global2.a.x), Struct_1(vec2<u32>(u_input.e.x, 11824u)))), Struct_2(vec3<u32>(global2.a.x, 116717u, u_input.e.x), Struct_1(vec2<u32>(global3.x, 0u))), ~vec3<u32>(43901u, 6325u, 4294967295u)), countOneBits(abs(42117i))), 21355i), max(-37750i, 87679i));
    let var_1 = vec4<i32>(-51757i, -11009i, ~(-1i), 0i) ^ vec4<i32>(1i, -20031i, 1i, ~func_3(Struct_4(Struct_2(u_input.e.yyy, Struct_1(u_input.e.wx)))).x);
    global3 = min(var_0.a.xw & var_0.b, reverseBits(vec2<u32>(global2.a.x, _wgslsmith_div_u32(global2.a.x << (4294967295u % 32u), global0[_wgslsmith_index_u32(var_0.b.x, 1u)] | 0u))));
    var var_2 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(-min(1i, -41175i), ~func_1(vec2<i32>(var_1.x, var_1.x), Struct_4(global1[_wgslsmith_index_u32(var_0.b.x, 25u)]), global1[_wgslsmith_index_u32(0u, 25u)], u_input.e.yyy), -(var_1.x & var_1.x), -1i)), select(vec4<i32>(-32485i, -2147483647i, ~(~3120i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-786i, var_1.x), var_1.zw)), vec4<i32>(~(-2147483647i), var_1.x ^ _wgslsmith_add_i32(-36504i, -54602i), -2147483647i, -1i), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), any(vec3<bool>(true, false, false)))));
    global3 = global2.a;
    global1 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yzz, func_3(Struct_4(global1[_wgslsmith_index_u32(39243u, 25u)])).yy, ~0u, vec2<i32>(~var_1.x, var_1.x));
}

