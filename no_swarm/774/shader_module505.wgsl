struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(6948u, 13237u, 1u, 29024u, 44278u, 36741u, 25449u, 22761u, 13334u, 4294967295u, 20807u, 1u, 21983u, 42324u, 498u, 4294967295u, 26812u, 117147u, 51923u, 0u, 53258u, 16630u, 0u, 38841u, 19589u, 0u, 13256u, 39749u);

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = -vec3<i32>(2147483647i, -28646i, global1.a.c.x);
    var var_1 = firstLeadingBit(-vec4<i32>(-39295i, i32(-1i) * -arg_0.b.x, 26703i, u_input.b.x));
    let var_2 = Struct_2(global1.a, any(vec3<bool>(true, !all(vec2<bool>(true, true)), !all(vec3<bool>(global1.b, false, false)))));
    var var_3 = Struct_1(countOneBits(firstTrailingBit(select(var_1.yzw, arg_0.b, vec3<bool>(true, true, true)))) ^ select(vec3<i32>(-var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-74170i, u_input.a), arg_0.c.xw), -1i), reverseBits(var_1.xyy), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(global1.b, global1.b, false), vec3<bool>(var_2.b, true, global1.b)), !vec3<bool>(global1.b, global1.b, var_2.b))), arg_0.c.ywy, ~arg_0.c >> (vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 28u)] << (arg_1.x % 32u), 28u)], ~global0[_wgslsmith_index_u32(1u, 28u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)] >> (60783u % 32u), countOneBits(73299u), countOneBits(0u)) % vec4<u32>(32u)), var_2.a.d);
    var_3 = Struct_1(var_2.a.c.zyy, countOneBits(var_0), _wgslsmith_clamp_vec4_i32(var_3.c, vec4<i32>(var_0.x, var_3.c.x, -39320i, _wgslsmith_dot_vec3_i32(arg_0.c.yyx, global1.a.a)) << (firstTrailingBit(select(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], arg_1.x, arg_1.x, 0u), vec4<u32>(arg_1.x, arg_1.x, 52822u, 4294967295u), vec4<bool>(var_2.b, false, global1.b, global1.b))) % vec4<u32>(32u)), vec4<i32>(var_2.a.a.x, abs(_wgslsmith_mult_i32(global1.a.a.x, arg_0.b.x)), (i32(-1i) * -7405i) & arg_0.c.x, var_3.a.x)), _wgslsmith_f_op_f32(-547f + arg_2));
    return -1345f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_2(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d + arg_0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_0, vec3<u32>(61310u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 55354u), global1.a.d)), arg_0.d))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)));
    global1 = Struct_2(Struct_1(~(-(vec3<i32>(1i, 2147483647i, arg_0.a.x) | arg_0.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.c.x, reverseBits(arg_0.a.x), u_input.c.x), ~arg_0.c.wxz, -vec3<i32>(global1.a.c.x, global1.a.c.x, u_input.a)), -(vec4<i32>(arg_0.b.x, 4859i, 1i, global1.a.c.x) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49322u, 28u)], 28u)], 28u)], 28u)], 4294967295u) % vec4<u32>(32u))) & arg_0.c, _wgslsmith_f_op_f32(-global1.a.d)), global1.b);
    let var_0 = global1.b;
    global1 = Struct_2(global1.a, true);
    let var_1 = _wgslsmith_sub_vec2_i32(select(min(_wgslsmith_sub_vec2_i32(global1.a.c.xz, vec2<i32>(arg_0.a.x, u_input.c.x)), arg_0.c.ww) ^ _wgslsmith_mult_vec2_i32(firstLeadingBit(global1.a.c.ww), u_input.b | vec2<i32>(-5585i, arg_0.c.x)), _wgslsmith_mod_vec2_i32(global1.a.b.yz, vec2<i32>(50576i, arg_0.c.x) << (firstLeadingBit(vec2<u32>(119956u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)])) % vec2<u32>(32u))), global1.b), ~select(global1.a.b.xz, firstLeadingBit(global1.a.c.yx << (vec2<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(56161u, 28u)]) % vec2<u32>(32u))), select(vec2<bool>(false, false), !vec2<bool>(global1.b, false), select(vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(false, false)))));
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = select(select(vec3<bool>(all(vec2<bool>(true, true)), !global1.b, arg_0.b), select(!select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(global1.b, arg_0.b, arg_0.b), false), select(vec3<bool>(global1.b, arg_0.b, global1.b), select(vec3<bool>(false, false, arg_0.b), vec3<bool>(global1.b, arg_0.b, arg_0.b), true), vec3<bool>(true, arg_0.b, arg_0.b)), select(vec3<bool>(true, global1.b, false), select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0.b, false), true), arg_0.b)), select(vec3<bool>(!arg_0.b, any(vec2<bool>(false, true)), any(vec2<bool>(false, global1.b))), !vec3<bool>(arg_0.b, true, true), select(vec3<bool>(false, global1.b, arg_0.b), select(vec3<bool>(arg_0.b, global1.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, true), global1.b), any(vec2<bool>(arg_0.b, global1.b))))), select(select(select(select(vec3<bool>(global1.b, arg_0.b, global1.b), vec3<bool>(false, global1.b, arg_0.b), vec3<bool>(false, false, true)), vec3<bool>(false, true, arg_0.b), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.b, arg_0.b), arg_0.b)), !vec3<bool>(true, true, arg_0.b), select(!vec3<bool>(arg_0.b, true, false), select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(true, false, true), vec3<bool>(global1.b, global1.b, false)), select(vec3<bool>(false, arg_0.b, global1.b), vec3<bool>(global1.b, arg_0.b, global1.b), true))), vec3<bool>(arg_0.a.d != _wgslsmith_f_op_f32(f32(-1f) * -176f), false, arg_0.b), global1.b), !(!global1.b));
    global0 = array<u32, 28>();
    global1 = Struct_2(func_2(Struct_1(~vec3<i32>(global1.a.c.x, 11512i, arg_0.a.a.x), arg_0.a.a, vec4<i32>(_wgslsmith_div_i32(9548i, u_input.a), firstLeadingBit(1i), min(arg_0.a.a.x, 1i), -16048i), 310f)), false);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(func_3(func_2(Struct_1(global1.a.c.xxz, vec3<i32>(u_input.a, -18270i, -34137i), vec4<i32>(global1.a.a.x, arg_0.a.b.x, global1.a.a.x, 18618i), arg_0.a.d)), select(vec3<u32>(global0[_wgslsmith_index_u32(21031u, 28u)], global0[_wgslsmith_index_u32(65758u, 28u)], 39778u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(52345u, 28u)], 0u), vec3<u32>(0u, 33139u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)]), vec3<u32>(32274u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])), !vec3<bool>(arg_0.b, false, true)), arg_1))), arg_1);
    global1 = arg_0;
    return 4294967295u;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * arg_0.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.a.d, -1530f))))) > _wgslsmith_f_op_f32(-506f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.d, -2382f)))), true, true);
    var var_1 = -13771i;
    var var_2 = global0[_wgslsmith_index_u32(0u >> (func_4(Struct_2(func_2(global1.a), (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)] >> (0u % 32u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2405u, 28u)], 28u)], 28u)], 0u), vec3<u32>(8974u, 4294967295u, 64708u))), _wgslsmith_f_op_f32(f32(-1f) * -494f)) % 32u), 28u)];
    let var_3 = global0[_wgslsmith_index_u32(~(~countOneBits(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8139u, 28u)], 28u)], 28u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)])), 28u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d, arg_0.d))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -212f) + _wgslsmith_f_op_f32(798f * -1458f)) + global1.a.d))), 1293f, _wgslsmith_div_f32(163f, _wgslsmith_f_op_f32(186f - -235f)));
    return vec4<bool>(any(var_0.yz), false, !var_0.x, select(-_wgslsmith_div_i32(arg_0.b.x, 0i) == u_input.a, global1.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = any(select(!select(vec4<bool>(true, global1.b, global1.b, true), func_1(Struct_1(vec3<i32>(u_input.c.x, 121880i, 2147483647i), global1.a.b, global1.a.c, global1.a.d)), vec4<bool>(true, false, false, global1.b)), !(!(!vec4<bool>(global1.b, global1.b, true, false))), select(select(select(vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(global1.b, global1.b, true, global1.b), true), !vec4<bool>(global1.b, false, global1.b, global1.b), !global1.b), !select(vec4<bool>(global1.b, global1.b, false, global1.b), vec4<bool>(global1.b, false, global1.b, false), vec4<bool>(true, global1.b, global1.b, global1.b)), all(!vec3<bool>(global1.b, global1.b, global1.b)))));
    var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(abs(~abs(vec4<u32>(global0[_wgslsmith_index_u32(23107u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(24138u, 28u)], global0[_wgslsmith_index_u32(52518u, 28u)])))), vec4<u32>(func_4(Struct_2(global1.a, true), _wgslsmith_f_op_f32(-global1.a.d)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(~4294967295u, 28u)], countOneBits(global0[_wgslsmith_index_u32(11123u, 28u)]), global1.b), 28u)], 28u)], _wgslsmith_dot_vec4_u32(abs(vec4<u32>(18305u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50835u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 44961u, 0u)), vec4<u32>(53547u, global0[_wgslsmith_index_u32(33331u, 28u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)]))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 28u)], 107051u) | vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], global0[_wgslsmith_index_u32(49635u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec3<bool>(var_1, false, true)), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u)), countOneBits(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41429u, 28u)], 28u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]))), firstLeadingBit(global0[_wgslsmith_index_u32(abs(1u) << (func_4(Struct_2(Struct_1(vec3<i32>(global1.a.a.x, 12225i, -1i), vec3<i32>(-10426i, 46597i, global1.a.a.x), vec4<i32>(u_input.b.x, 21845i, u_input.c.x, global1.a.c.x), global1.a.d), var_1), -374f) % 32u), 28u)]))), 28u)], 28u)];
    var var_2 = select(global0[_wgslsmith_index_u32(abs(select(global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(106063u, 28u)] >> (4294967295u % 32u)) << (~global0[_wgslsmith_index_u32(1u, 28u)] % 32u), 28u)], countOneBits(0u), true)), 28u)], global0[_wgslsmith_index_u32(114u, 28u)], select(true, global1.a.d <= _wgslsmith_f_op_f32(ceil(global1.a.d)), all(vec3<bool>(15751u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], global1.b || false, true))));
    global0 = array<u32, 28>();
    global1 = Struct_2(func_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, global1.a.c.yx), _wgslsmith_dot_vec3_i32(global1.a.a, global1.a.a), 1i), -global1.a.a | vec3<i32>(-5471i, -19257i, u_input.a), global1.a.c & abs(global1.a.c), _wgslsmith_f_op_f32(-global1.a.d))), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, global1.b | (53267u != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(350u, 28u)], 28u)], 28u)], 28u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.d, global1.a.d, 694f, 0i);
}

