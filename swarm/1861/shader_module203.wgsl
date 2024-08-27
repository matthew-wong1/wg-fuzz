struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(111f, 1161f, 1000f);

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 53074u, 42327u, 0u, 4294967295u, 43632u, 4294967295u, 29625u, 8366u, 34673u, 1u, 15164u, 72620u, 22814u, 116159u, 804u, 4294967295u, 4294967295u, 1u, 26758u);

var<private> global2: array<vec3<i32>, 3>;

var<private> global3: f32 = 460f;

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(422f * global0.x), -1623f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zx))), vec3<i32>(global4.x, ~firstLeadingBit(arg_3), _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, u_input.a, u_input.b.x), vec4<i32>(u_input.a, -2147483647i, -1i, u_input.b.x))), vec3<bool>(true, true, true)), Struct_1(arg_0.xw, vec3<i32>(-1i) * -(~vec3<i32>(-1i, u_input.b.x, -15860i)), !vec3<bool>(false, true, any(vec4<bool>(false, false, true, true)))), countOneBits(vec3<u32>(arg_2, ~0u, max(93001u, arg_1.x)) >> (~vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u))), ~arg_3);
    var var_1 = 15403u;
    var var_2 = Struct_3(_wgslsmith_sub_i32(~global4.x, var_0.b.b.x), Struct_2(var_0.a, var_0.b, ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 20u)], 29731u), vec3<u32>(43295u, arg_1.x, 27411u)) << (_wgslsmith_clamp_vec3_u32(var_0.c | arg_1, abs(vec3<u32>(var_0.c.x, var_0.c.x, 29117u)), var_0.c) % vec3<u32>(32u)), arg_3), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zw + vec2<f32>(249f, arg_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1356f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), -1145f))), var_0.b.b, select(select(vec3<bool>(var_0.a.c.x, var_0.a.c.x, false), !vec3<bool>(var_0.b.c.x, true, var_0.a.c.x), any(vec2<bool>(var_0.b.c.x, var_0.a.c.x))), var_0.b.c, !any(vec3<bool>(true, var_0.b.c.x, var_0.a.c.x)))), vec4<u32>(~(~(~39555u)), ~arg_2, 4294967295u, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(47461u ^ global1[_wgslsmith_index_u32(arg_2, 20u)], 31788u & arg_2, arg_2 >> (arg_2 % 32u)))), _wgslsmith_f_op_f32(exp2(arg_0.x)));
    let var_3 = var_2.b;
    return var_3.a.b.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.yz)) * _wgslsmith_f_op_vec2_f32(-global0.zz)), vec2<bool>(true, 1348f == global0.x))), vec3<i32>(-2147483647i, min(i32(-1i) * -2147483647i, 0i), firstTrailingBit(-42789i)), select(vec3<bool>(true & arg_2.x, global4.x < arg_0, arg_2.x & false), !vec3<bool>(arg_2.x, arg_2.x, false), all(vec3<bool>(true, true, true)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(sign(1570f))), -1406f), abs(reverseBits(select(vec3<i32>(26285i, 17809i, -1i), vec3<i32>(14130i, -22093i, u_input.a), vec3<bool>(arg_2.x, true, false)))), select(!vec3<bool>(arg_2.x, false, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, false), arg_2.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(22301u, 51809u, 17894u), vec3<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, 4294967295u), vec3<u32>(58689u, arg_1, arg_1)))) & ~(~select(vec3<u32>(arg_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 20u)], 20u)], 20u)], 26484u), vec3<u32>(global1[_wgslsmith_index_u32(30718u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 0u), false)), _wgslsmith_mod_i32(-2147483647i, global4.x));
    let var_1 = !arg_2.x & arg_2.x;
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(34318i, ~12067i), -arg_0);
    global2 = array<vec3<i32>, 3>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(var_0.a.a)), max(u_input.b, vec3<i32>(u_input.a, 61464i | arg_0, _wgslsmith_sub_i32(-17085i, 8802i))) ^ ~vec3<i32>(-var_2.x, var_0.a.b.x, var_2.x), select(var_0.a.c, select(select(var_0.b.c, var_0.b.c, true), !select(vec3<bool>(var_0.a.c.x, arg_2.x, false), vec3<bool>(arg_2.x, var_1, arg_2.x), vec3<bool>(arg_2.x, true, true)), any(!vec4<bool>(arg_2.x, true, false, false))), arg_2.x));
    return ~vec3<u32>(abs(arg_1), ~18477u, select(1u, ~_wgslsmith_clamp_u32(35764u, 4294967295u, 4294967295u), !var_3.c.x));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) + vec2<f32>(arg_2.a.x, 1345f))), -vec3<i32>(arg_1, 2147483647i, arg_2.b.x) >> ((vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16906u, 20u)], 20u)], 20u)], 1u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(32429u, 20u)], 1309u), vec3<u32>(21694u, 73087u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29338u, 20u)], 20u)]))) % vec3<u32>(32u)), vec3<bool>(arg_1 < 1i, !arg_2.c.x, true)), arg_2, func_4(_wgslsmith_mod_i32(arg_2.b.x, ~1i ^ func_3(vec4<f32>(arg_2.a.x, global0.x, 689f, arg_0), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65317u, 20u)], 20u)], global1[_wgslsmith_index_u32(8967u, 20u)], 23079u), global1[_wgslsmith_index_u32(0u, 20u)], arg_2.b.x)), global1[_wgslsmith_index_u32(countOneBits(~1u), 20u)], vec2<bool>(!(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)], 20u)] > 43834u), arg_2.c.x)), global4.x);
    var var_1 = arg_0;
    global4 = vec3<i32>(26204i, -3009i, min(_wgslsmith_div_i32(firstLeadingBit(-1i), abs(global4.x)), _wgslsmith_clamp_i32(i32(-1i) * -27223i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b.x, arg_1, 37934i, -1i), vec4<i32>(-42862i, 0i, -58887i, 2147483647i)), 49740i))) ^ arg_2.b;
    var var_2 = var_0.c;
    var var_3 = Struct_2(Struct_1(global0.yy, vec3<i32>(19021i, reverseBits(firstLeadingBit(arg_1)), var_0.a.b.x), !select(!vec3<bool>(false, true, arg_2.c.x), var_0.a.c, var_0.a.c.x)), arg_2, vec3<u32>(1u, reverseBits(var_0.c.x), 31140u), arg_1);
    return Struct_3(~_wgslsmith_clamp_i32(-(var_0.b.b.x ^ 1i), arg_1 | ~arg_2.b.x, 0i), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.a.x, global0.x))), global2[_wgslsmith_index_u32(abs(var_0.c.x), 3u)], arg_2.c), Struct_1(vec2<f32>(696f, _wgslsmith_f_op_f32(-var_0.b.a.x)), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(42377i, arg_1)), ~global4.x), select(!vec3<bool>(false, true, var_0.b.c.x), select(arg_2.c, vec3<bool>(true, var_3.a.c.x, var_0.a.c.x), var_3.b.c), vec3<bool>(arg_2.c.x, true, false))), vec3<u32>(global1[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_div_u32(select(69047u, var_3.c.x, true), 0u), var_3.c.x), abs(-u_input.b.x) | u_input.b.x), arg_2, abs(~abs(vec4<u32>(var_0.c.x, var_3.c.x, global1[_wgslsmith_index_u32(var_2.x, 20u)], 58093u))), 527f);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -(global2[_wgslsmith_index_u32(1u, 3u)] | global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 3u)])) ^ global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(1028u), 20u)], 3u)], select(_wgslsmith_mod_vec3_i32(~(~u_input.b), _wgslsmith_mult_vec3_i32(arg_3.c.b, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(arg_0.x, arg_3.b.b.b.x, arg_0.x)))), vec3<i32>(_wgslsmith_sub_i32(-arg_0.x, -58142i), arg_0.x >> (~168u % 32u), _wgslsmith_clamp_i32(arg_0.x, -1i, 2147483647i) & -2147483647i), arg_2));
    global1 = array<u32, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.a.x) + _wgslsmith_f_op_f32(arg_3.e * arg_3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.a.x))) * _wgslsmith_f_op_vec2_f32(global0.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(-1617f, global0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, 497f))))), ~reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -50233i, global4.x), vec3<i32>(arg_3.a, 5899i, -18100i))), func_2(797f, 0i << (_wgslsmith_mult_u32(arg_3.d.x, 1u) % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(arg_3.c.a - _wgslsmith_f_op_vec2_f32(select(global0.zz, vec2<f32>(global0.x, arg_3.e), true))), ~vec3<i32>(arg_3.b.d, -18481i, 21376i), arg_1.wxx)).c.c);
    var var_2 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(2021f, arg_3.c.a.x))) + arg_3.b.b.a.x))), 24392i, arg_3.c);
    var var_3 = arg_3.b.c.xy;
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(func_2(-1183f, var_0.x, var_2.b.a).b.d, i32(-1i) * -31477i, func_2(_wgslsmith_f_op_f32(-var_2.e), -global4.x, func_2(-774f, -2147483647i, arg_3.b.a).c).c.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-7247i, 1i, arg_3.b.a.b.x), select(func_2(global0.x, -75588i, Struct_1(vec2<f32>(global0.x, -844f), var_2.b.a.b, vec3<bool>(var_2.b.a.c.x, true, arg_2))).b.a.b, firstLeadingBit(global2[_wgslsmith_index_u32(0u, 3u)]), var_2.b.b.c)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(701f, -261f))))), -func_5(global4.zy, vec4<bool>(true, true, false, true), true, func_2(1789f, -1i, Struct_1(global0.xz, u_input.b, vec3<bool>(true, false, false)))), !vec3<bool>(any(vec2<bool>(false, true)), true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -436f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(733f, -316f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zy - vec2<f32>(124f, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, global0.x))))), -(abs(vec3<i32>(global4.x, -46295i, global4.x)) | abs(vec3<i32>(global4.x, global4.x, u_input.b.x))), vec3<bool>(true, true, true)), vec3<u32>(global1[_wgslsmith_index_u32(func_2(285f, countOneBits(0i), Struct_1(global0.yz, vec3<i32>(global4.x, -10167i, global4.x), vec3<bool>(true, false, false))).d.x, 20u)] >> (~0u % 32u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], ~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64403u, 20u)], 20u)], 20u)], 20u)])), global1[_wgslsmith_index_u32(~1104u, 20u)]), ~u_input.b.x);
    var var_1 = vec4<i32>(global4.x, -((-2147483647i >> ((var_0.c.x ^ 1u) % 32u)) & 0i), global4.x, -((_wgslsmith_dot_vec3_i32(var_0.a.b, u_input.b) << (~0u % 32u)) >> (global1[_wgslsmith_index_u32(reverseBits(0u), 20u)] % 32u)));
    var_1 = max(vec4<i32>(global4.x | global4.x, 2147483647i, -1i, u_input.b.x), select(_wgslsmith_mod_vec4_i32(-vec4<i32>(-62927i, -1i, -2147483647i, var_0.b.b.x), countOneBits(-vec4<i32>(var_1.x, global4.x, -23423i, -32382i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-global4.x, var_0.a.b.x, var_0.a.b.x, 1i), vec4<i32>(48418i, countOneBits(-15416i), func_3(vec4<f32>(-1849f, var_0.b.a.x, global0.x, 844f), var_0.c, global1[_wgslsmith_index_u32(41929u, 20u)], var_0.d), -1i)), select(!vec4<bool>(var_0.a.c.x, false, true, false), !vec4<bool>(var_0.a.c.x, true, true, true), select(!vec4<bool>(false, false, false, var_0.a.c.x), !vec4<bool>(false, false, var_0.b.c.x, true), vec4<bool>(false, false, true, false)))));
    let var_2 = u_input.b.xy;
    let var_3 = ~var_0.a.b.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a)), vec3<i32>(-var_1.x, abs(1i), 2147483647i), var_0.b.c), func_2(_wgslsmith_div_f32(1977f, _wgslsmith_f_op_f32(f32(-1f) * -581f)), _wgslsmith_mult_i32(-7567i, global4.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-962f, -621f))) * func_2(-785f, 1i, var_0.a).b.b.a), var_0.b.b, select(select(var_0.a.c, var_0.a.c, var_0.a.c), select(vec3<bool>(var_0.a.c.x, false, var_0.b.c.x), var_0.b.c, var_0.a.c.x), !vec3<bool>(true, var_0.b.c.x, var_0.a.c.x)))).b.b, vec3<u32>(~(~44139u) << (~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 20u)], 2882u) % 32u), ~_wgslsmith_mod_u32(var_0.c.x, 4294967295u) | reverseBits(abs(global1[_wgslsmith_index_u32(5938u, 20u)])), _wgslsmith_add_u32(_wgslsmith_mod_u32(85640u, 37782u), firstTrailingBit(0u))), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.x), vec2<i32>(var_3, -1i)), -2147483647i), vec3<i32>(func_2(1403f, var_3, var_0.b).c.b.x, global4.x, -21157i)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), -1763f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.a.x, global0.x, -842f)))))));
    var var_0 = ~func_4(~(-(2147483647i << (arg_2.b.c.x % 32u))), arg_3.x, arg_2.b.a.c.zy).x;
    var var_1 = select(~func_2(-145f, min(-global4.x, abs(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, global0.x) * arg_2.c.a), min(u_input.b, vec3<i32>(-3195i, 35284i, -1i)), func_2(921f, arg_2.b.b.b.x, arg_2.c).c.c)).d.zwz, vec3<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(abs(arg_2.b.c.x), 20u)], 1u), ~arg_3.x), arg_0.x), func_2(_wgslsmith_f_op_f32(-arg_1.a.x), -27558i, Struct_1(vec2<f32>(-1000f, arg_1.a.x), ~_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(arg_2.b.c.x, 3u)], arg_2.b.b.b), vec3<bool>(true, false, true))).b.a.c);
    var var_2 = func_5(arg_1.b.xz, !select(select(!vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_2.b.a.c.x), select(vec4<bool>(true, false, true, arg_2.b.a.c.x), vec4<bool>(arg_2.b.a.c.x, arg_2.b.a.c.x, arg_2.b.b.c.x, arg_1.c.x), arg_1.c.x), vec4<bool>(arg_2.c.c.x, true, arg_1.c.x, arg_2.c.c.x)), vec4<bool>(arg_1.c.x, select(true, true, true), !arg_2.b.a.c.x, !arg_1.c.x), select(arg_1.c.x, false && arg_1.c.x, arg_2.b.b.c.x)), true, Struct_3(_wgslsmith_div_i32(-(~arg_2.a), global4.x), Struct_2(Struct_1(vec2<f32>(1880f, 898f), vec3<i32>(u_input.a, 2147483647i, -1i), !arg_1.c), arg_1, arg_2.d.wxx, 6402i), arg_1, abs(~_wgslsmith_div_vec4_u32(arg_2.d, arg_2.d)), global0.x));
    let var_3 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -2785f), u_input.a, arg_1).b;
    return arg_2.b.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(1110f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-471f)), -1125f))))), global0.x);
    global3 = -541f;
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~26257u, 20u)], 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), global1[_wgslsmith_index_u32(~abs(~1u), 20u)]);
    var var_1 = select(func_6(vec2<u32>(firstLeadingBit(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global1[_wgslsmith_index_u32(99515u, 20u)])), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(max(0u, 82796u), 20u)], max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(24106u, 20u)]))), Struct_1(global0.yy, u_input.b, vec3<bool>(false, true, true)), Struct_3(~abs(u_input.a), func_1(), func_1().a, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(97267u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39510u, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)]) & _wgslsmith_sub_vec4_u32(vec4<u32>(53641u, 2547u, 1u, 0u), vec4<u32>(17467u, 4294967295u, 14203u, global1[_wgslsmith_index_u32(28054u, 20u)])), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -492f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 86244u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 73304u)), 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), ~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 23822u)))), !vec3<bool>(false, true, func_6(vec2<u32>(3619u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3056u, 20u)], 20u)], 20u)], 20u)]), Struct_1(global0.yz, u_input.b, vec3<bool>(false, false, true)), Struct_3(2147483647i, Struct_2(Struct_1(vec2<f32>(global0.x, 1000f), vec3<i32>(11454i, global4.x, u_input.a), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(1234f, -273f), vec3<i32>(11164i, 0i, global4.x), vec3<bool>(false, false, false)), vec3<u32>(23391u, global1[_wgslsmith_index_u32(41545u, 20u)], 0u), global4.x), Struct_1(global0.yy, global2[_wgslsmith_index_u32(0u, 3u)], vec3<bool>(false, false, true)), vec4<u32>(1u, 4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13417u, 20u)], 20u)], 20u)], 20u)]), 855f), vec2<u32>(0u, 1u)).x || true), any(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_sub_i32(global4.x, 0i);
    global1 = array<u32, 20>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.yx), global2[_wgslsmith_index_u32(~(~5848u), 3u)], vec3<bool>(var_1.x | var_1.x, true, var_1.x));
    let var_4 = global1[_wgslsmith_index_u32(1u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_add_vec3_i32((vec3<i32>(1350i, 2147483647i, -80277i) & reverseBits(u_input.b)) << (~(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50691u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(2825u, 20u)])) % vec3<u32>(32u)), var_3.b), ~(-_wgslsmith_mod_i32(1i, var_3.b.x)), 1960f, ~(~(func_1().c.zx & vec2<u32>(0u, 1122u))));
}

