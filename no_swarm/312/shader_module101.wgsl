struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, true, vec4<u32>(61992u, 764u, 1u, 0u), 58675i);

var<private> global1: f32 = -241f;

var<private> global2: array<i32, 4> = array<i32, 4>(-62088i, 2147483647i, -1i, -16257i);

var<private> global3: array<Struct_1, 20>;

var<private> global4: vec4<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> u32 {
    var var_0 = select(!select(vec3<bool>(any(vec2<bool>(false, global0.b)), true, true), select(select(vec3<bool>(global0.b, true, global0.a), vec3<bool>(global0.a, false, global0.b), vec3<bool>(global0.a, true, true)), select(vec3<bool>(global0.b, false, true), vec3<bool>(true, global0.b, false), vec3<bool>(global0.a, false, global0.a)), global0.a), vec3<bool>(true, global0.b, true)), vec3<bool>(global0.a, true, global0.a), select(!vec3<bool>(true, !global0.a, any(vec4<bool>(global0.b, global0.b, true, true))), !select(!vec3<bool>(false, true, global0.b), vec3<bool>(false, true, true), select(vec3<bool>(false, true, global0.a), vec3<bool>(global0.a, global0.b, global0.a), vec3<bool>(global0.a, false, false))), select(vec3<bool>(!global0.b, true, true), vec3<bool>(false, true, select(global0.b, false, global0.b)), global0.a)));
    let var_1 = global0.c.x | ~4294967295u;
    global3 = array<Struct_1, 20>();
    var var_2 = ~select(firstTrailingBit(-vec2<i32>(global0.d, -58358i)), vec2<i32>(global0.d, ~global0.d), any(!vec4<bool>(global0.b, true, var_0.x, true)));
    let var_3 = global0.b;
    return 0u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = -(~(arg_0.a ^ arg_0.a));
    let var_1 = vec3<i32>(-55589i, _wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -12500i), 49418i, -2455i), -43500i), arg_3.d);
    var var_2 = vec4<bool>(true, arg_1.b, arg_3.b, false);
    let var_3 = arg_2.x;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1244f))))));
    return !(!(true & (arg_1.c.x == 4371u)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = func_3(Struct_2(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(37475i, -1i, global0.d), vec3<i32>(1i, global2[_wgslsmith_index_u32(arg_1.x, 4u)], global0.d)), vec3<i32>(-67413i, 8292i, -2147483647i))), global3[_wgslsmith_index_u32(27676u, 20u)], select(~_wgslsmith_mult_vec4_u32(~global0.c, global0.c), _wgslsmith_clamp_vec4_u32(global0.c, vec4<u32>(0u, 51242u, arg_0, 0u) >> (firstTrailingBit(vec4<u32>(62526u, global4.x, global0.c.x, 4294967295u)) % vec4<u32>(32u)), abs(vec4<u32>(1u, 0u, 41666u, 0u))), global0.b), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_2(), ~0u), 20u)]);
    let var_1 = 12427i;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(reverseBits(func_2()), abs(~arg_1.x)), 4294967295u), (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global4.x, arg_0), vec3<u32>(11058u, 18893u, global0.c.x)) & global4.x) & global0.c.x, _wgslsmith_sub_u32(global4.x << (78729u % 32u), ~((global4.x & global0.c.x) | 0u)));
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0.d) << (~global0.c.xy % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(2147483647i, var_1)) | vec2<i32>(70167i, u_input.b)), ~2147483647i, 72463i | global0.d));
    var var_4 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1.x, arg_0), func_2()), arg_1), arg_1.x), 20u)];
    return var_3;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(round(-343f));
    var var_0 = _wgslsmith_f_op_f32(step(-1333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(344f)) - _wgslsmith_f_op_f32(f32(-1f) * -1104f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1396f)), _wgslsmith_f_op_f32(min(2289f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1221f)) * _wgslsmith_div_f32(-522f, 1146f)))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(-220f, var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(2414f))), var_1.x))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(~0i), ~(~(i32(-1i) * -6908i)), 1213i, arg_3), vec4<i32>(-abs(-1i), select(~(-13529i) ^ ~arg_3, ~arg_1.a.x, !select(global0.a, false, false)), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 53739i), arg_3 & global0.d), global0.d));
    return -153f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, global0.d, global0.d, global0.d) >> (global0.c % vec4<u32>(32u)), countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, 27503i, 0i, global0.d)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(2644i << ((global4.x >> (abs(global4.x) % 32u)) % 32u), func_1(~_wgslsmith_clamp_u32(global4.x, global4.x, 17342u), ~vec2<u32>(global4.x, global0.c.x), vec2<f32>(_wgslsmith_f_op_f32(-436f * 514f), _wgslsmith_div_f32(-402f, 227f))), func_1(abs(global4.x ^ global4.x), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(40789u, 1u), global4.yy, global0.c.yy), global4.wy & vec2<u32>(8851u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(-544f + 659f), _wgslsmith_f_op_f32(step(385f, 933f)))).a.x, -33870i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1748f, 1417f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2275f))), 879f)));
    let var_2 = func_1(~(global0.c.x ^ global4.x), global4.zy << ((global4.xx << (vec2<u32>(global0.c.x, ~global0.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.d, Struct_2(vec3<i32>(23651i, 32739i, u_input.b)), -1i, u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1523f + var_1)))));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(global0.c.x), global0.c.x), 20u)];
    let var_3 = select(vec4<bool>(false, all(vec3<bool>(false, true, true)), true, all(!select(vec2<bool>(global0.a, false), vec2<bool>(global0.b, false), vec2<bool>(true, global0.a)))), vec4<bool>(global0.b, global0.b, !global0.a, !all(select(vec4<bool>(global0.b, true, true, global0.b), vec4<bool>(global0.a, true, global0.a, global0.b), global0.a))), vec4<bool>(true, true, !global0.a != global0.a, func_3(Struct_2(func_1(0u, vec2<u32>(63225u, 0u), vec2<f32>(754f, var_1)).a), global3[_wgslsmith_index_u32(~global4.x, 20u)], _wgslsmith_add_vec4_u32(global0.c, reverseBits(global0.c)), global3[_wgslsmith_index_u32(4294967295u, 20u)])));
    let var_4 = var_3.x && (global2[_wgslsmith_index_u32(49202u, 4u)] == _wgslsmith_add_i32(select(min(-2147483647i, global0.d), -34006i, global4.x >= global4.x), -24165i));
    var var_5 = _wgslsmith_clamp_i32(-1i, (-1i & _wgslsmith_div_i32(var_0.x, -51908i)) & global0.d, _wgslsmith_dot_vec4_i32(reverseBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(-56808i, 40269i, 0i, u_input.b), vec4<i32>(31493i, var_2.a.x, 1i, global2[_wgslsmith_index_u32(8473u, 4u)])), abs(vec4<i32>(2147483647i, 7164i, var_2.a.x, 1i)))), -abs(countOneBits(vec4<i32>(1i, 52767i, global0.d, -80978i)))));
    global3 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-16386i, -var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(select(global4.x, global4.x, true), global4.x, countOneBits(global4.x) << (global0.c.x % 32u), global4.x), global0.c));
}

