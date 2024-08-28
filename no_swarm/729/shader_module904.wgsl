struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<u32, 18>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(-37995i, vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), 36627i), 4294967295u, vec4<bool>(false, false, true, true));

var<private> global4: array<u32, 19> = array<u32, 19>(4294967295u, 4294967295u, 18298u, 51599u, 3763u, 3256u, 21331u, 12120u, 27503u, 0u, 30747u, 28436u, 4294967295u, 1u, 0u, 44306u, 82363u, 0u, 1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    global4 = array<u32, 19>();
    global1 = array<u32, 18>();
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(0u) >> ((arg_0.d & arg_0.d) % 32u), 18u)], 5u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1332f, -311f));
    let var_2 = Struct_1(-49938i, global3.b, countOneBits(select(vec2<i32>(select(arg_0.a, arg_0.c.x, false), 11757i), abs(-var_0.a.c), !(!arg_1.b.xx))), arg_1.d, select(!(!vec4<bool>(true, false, false, var_0.e.x)), !(!(!arg_1.e)), var_0.e.x));
    return arg_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1((firstTrailingBit(u_input.c.x) ^ 1i) | _wgslsmith_mod_i32(global3.a, 2147483647i), arg_0.e, _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(1i, -14428i), 70492i), vec2<i32>(reverseBits(53408i), arg_0.a.c.x) << ((u_input.d.yx & min(u_input.b.zz, vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(16676u, 19u)]))) % vec2<u32>(32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.d.wz, ~vec2<u32>(40729u, arg_0.d.x)), u_input.b.xx), ~arg_0.a.d, 35422u), vec4<bool>(false, all(select(vec4<bool>(global3.b.x, arg_0.e.x, true, arg_0.e.x), global3.e, global3.e.x)) == true, false, true));
    global3 = Struct_1(firstTrailingBit(_wgslsmith_clamp_i32(-29913i, -36982i, func_3(var_0, Struct_1(-1i, vec3<bool>(false, false, true), vec2<i32>(-2147483647i, arg_0.b), u_input.d.x, arg_0.a.e), vec4<u32>(0u, 37344u, global4[_wgslsmith_index_u32(0u, 19u)], var_0.d)))), !arg_0.a.e.yzw, max(global3.c, vec2<i32>(u_input.c.x, var_0.c.x)), _wgslsmith_div_u32(arg_0.a.d, ~54987u ^ max(var_0.d, 1u)), var_0.e);
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(u_input.c.x, !vec3<bool>(true, var_1.a.b.x != var_0.e.x, any(var_1.a.e)), -(var_0.c | var_0.c) & vec2<i32>(var_1.b, -2147483647i), _wgslsmith_sub_u32(global3.d, ~(~4294967295u)), var_1.a.e), _wgslsmith_sub_i32(~arg_0.a.c.x, var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x), _wgslsmith_f_op_f32(floor(269f)))))), _wgslsmith_mult_vec4_u32(select(select(var_1.d, arg_0.d, true), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.d, vec4<u32>(11224u, 49568u, u_input.b.x, 1u)), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], 53621u, var_1.a.d)), true | !global3.e.x), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_div_vec4_u32(arg_0.d, var_1.d), u_input.b, select(vec4<bool>(var_0.b.x, var_1.a.b.x, true, false), vec4<bool>(false, true, var_1.a.e.x, global3.b.x), var_0.b.x)), select(countOneBits(u_input.b), var_1.d, !var_0.b.x), ~arg_0.d >> (arg_0.d % vec4<u32>(32u)))), var_1.a.b);
    var var_3 = -(_wgslsmith_mult_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, arg_0.a.c.x, 47944i, -1i), vec4<i32>(u_input.c.x, -23300i, -59080i, 0i)), -vec4<i32>(u_input.c.x, -4320i, -33206i, u_input.e)), reverseBits(~vec4<i32>(var_1.b, -2147483647i, 13002i, u_input.c.x))) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(global3.c, var_1.a.c), func_3(Struct_1(var_0.c.x, vec3<bool>(true, false, var_0.b.x), var_1.a.c, u_input.d.x, vec4<bool>(true, false, true, var_1.a.e.x)), var_1.a, var_2.d), -arg_0.a.c.x), ~vec4<i32>(var_0.a, -2147483647i, 2147483647i, 10856i) & -vec4<i32>(2147483647i, var_1.b, 0i, var_0.c.x)));
    return Struct_1(firstTrailingBit(var_1.a.c.x), select(select(select(select(arg_0.a.e.yxw, arg_0.a.e.zzy, vec3<bool>(arg_0.a.b.x, true, var_0.b.x)), arg_0.a.b, select(vec3<bool>(true, var_1.e.x, true), vec3<bool>(false, true, false), var_0.b)), !select(var_2.a.b, var_2.e, vec3<bool>(var_0.e.x, false, arg_0.e.x)), false), !global3.b, false), select(select(abs(~vec2<i32>(-25002i, var_1.a.c.x)), firstLeadingBit(vec2<i32>(var_2.b, -1i)), var_2.a.e.x), firstLeadingBit(vec2<i32>(22188i, var_1.a.a) << (~var_1.d.zw % vec2<u32>(32u))), !global3.e.xy), var_2.d.x, vec4<bool>(var_2.e.x, var_1.a.b.x, true, false));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.e.zzx;
    let var_1 = vec4<u32>(_wgslsmith_div_u32(arg_0.d, _wgslsmith_add_u32(50527u, global1[_wgslsmith_index_u32(~1u, 18u)])) ^ ~global3.d, _wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21414u, 19u)], 18u)], 44571u, 44266u), vec3<u32>(global3.d, global4[_wgslsmith_index_u32(global3.d, 19u)], 4294967295u), global3.b) ^ u_input.b.yyz), vec3<u32>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16818u, 0u, global1[_wgslsmith_index_u32(33705u, 18u)]), vec3<u32>(1u, u_input.a, global3.d)), 5u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(677f, -1000f), vec2<f32>(-996f, 198f)))).d, global3.d, u_input.b.x)), max(~u_input.d.x | 0u, ~_wgslsmith_add_u32(1u, ~73474u)), u_input.d.x);
    global2 = 4294967295u;
    let var_2 = _wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(func_2(Struct_2(Struct_1(5045i, vec3<bool>(var_0.x, true, false), global3.c, u_input.a, vec4<bool>(var_0.x, false, arg_0.b.x, arg_0.b.x)), 2147483647i, vec2<f32>(247f, -1832f), u_input.b, vec3<bool>(global3.b.x, var_0.x, false)), vec2<f32>(-181f, 573f)).c.x, _wgslsmith_sub_i32(1i, 1i), u_input.c.x ^ 1i, 1i)), vec4<i32>(abs(0i), ~u_input.e, _wgslsmith_mod_i32(-arg_0.a, global3.a), func_3(arg_0, func_2(global0[_wgslsmith_index_u32(global3.d, 5u)], vec2<f32>(248f, 903f)), vec4<u32>(0u, 1u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 18u)]))) & reverseBits(firstLeadingBit(~vec4<i32>(34007i, 6216i, global3.a, u_input.e))));
    global0 = array<Struct_2, 5>();
    return ~_wgslsmith_sub_u32(~(~4294967295u), 14430u) & arg_0.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = 0i;
    global1 = array<u32, 18>();
    global2 = ~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(global3.d, 4294967295u, arg_0.x, u_input.a) << (u_input.b % vec4<u32>(32u))) << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_0, ~arg_0), func_4(func_2(Struct_2(Struct_1(global3.c.x, vec3<bool>(global3.b.x, global3.b.x, true), vec2<i32>(1i, -71003i), 0u, global3.e), global3.c.x, arg_3.zz, vec4<u32>(global4[_wgslsmith_index_u32(58996u, 19u)], 54226u, 4294967295u, 0u), global3.e.www), vec2<f32>(832f, 1463f))), 1u), ~(~abs(4294967295u))) % 32u);
    let var_1 = !func_2(global0[_wgslsmith_index_u32(select(func_2(Struct_2(Struct_1(global3.c.x, vec3<bool>(global3.e.x, global3.b.x, true), global3.c, 19881u, global3.e), 21938i, vec2<f32>(1270f, -735f), vec4<u32>(73510u, global1[_wgslsmith_index_u32(22386u, 18u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.d, 18u)], 19u)], 0u), global3.b), _wgslsmith_f_op_vec2_f32(arg_3.zz * vec2<f32>(1069f, arg_2.x))).d, ~11141u, global3.b.x), 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 2105f))))).b.x;
    var var_2 = -1000f;
    return max(30784i, global3.a | ~(_wgslsmith_mult_i32(u_input.e, u_input.c.x) | 1i));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    let var_1 = countOneBits(global3.a);
    let var_2 = true;
    var var_3 = all(select(vec3<bool>(false, !(!var_2), arg_2 <= _wgslsmith_f_op_f32(arg_2 * var_0.c.x)), arg_1.b, select(arg_1.e.ywz, vec3<bool>(true, arg_1.e.x, true), arg_1.b.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x));
    return global0[_wgslsmith_index_u32(20346u >> ((~(~_wgslsmith_add_u32(1u, 23243u)) ^ func_2(Struct_2(Struct_1(1i, vec3<bool>(var_2, var_2, false), vec2<i32>(-2147483647i, var_1), 23979u, vec4<bool>(false, global3.e.x, true, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -33890i, 51377i, -47107i), vec4<i32>(1i, -1i, var_0.b, global3.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1144f, var_0.c.x)), u_input.b, vec3<bool>(arg_0, var_2, true)), var_0.c).d) % 32u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global3.b.x, Struct_1(_wgslsmith_add_i32(global3.c.x, _wgslsmith_mod_i32(~u_input.c.x, 46677i)), global3.b, _wgslsmith_mult_vec2_i32(vec2<i32>(func_1(u_input.b, u_input.b.zy, vec3<f32>(355f, -494f, 437f), vec4<f32>(569f, 811f, -782f, -761f)), u_input.e), -vec2<i32>(1i, u_input.c.x)), u_input.a, vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(trunc(-1243f)));
    global2 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 24696u, global1[_wgslsmith_index_u32(47669u, 18u)], 13403u) & u_input.b), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, u_input.b), u_input.b, _wgslsmith_mod_vec4_u32(func_5(false, var_0.a, -1662f).d, vec4<u32>(u_input.b.x, 4294967295u, 0u, global1[_wgslsmith_index_u32(global3.d, 18u)])))) | ~func_5(any(func_2(global0[_wgslsmith_index_u32(0u, 5u)], vec2<f32>(var_0.c.x, var_0.c.x)).e), var_0.a, var_0.c.x).a.d;
    let var_1 = Struct_2(func_5(false, func_5(var_0.e.x, var_0.a, _wgslsmith_f_op_f32(trunc(func_5(true, var_0.a, var_0.c.x).c.x))).a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(func_5(true, var_0.a, var_0.c.x).c.x))))).a, -36291i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.c)))), ~var_0.d, var_0.e);
    global0 = array<Struct_2, 5>();
    global1 = array<u32, 18>();
    let var_2 = min(-259i, -47760i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d);
}

