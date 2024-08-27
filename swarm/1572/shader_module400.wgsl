struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<i32, 6>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    let var_0 = min(vec4<i32>(2147483647i, select(i32(-1i) * -12323i, arg_0.a.x << (arg_0.d.x % 32u), !arg_0.c.b), arg_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 6u)] >> (select(u_input.a.x, u_input.a.x, true) % 32u)), min(u_input.c, arg_1)) >> (_wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(16203u, 0u, u_input.a.x, 1u)), _wgslsmith_add_vec4_u32(~arg_0.d, vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d), u_input.a.x, 11281u, firstLeadingBit(1u)))) % vec4<u32>(32u));
    global2 = u_input.c.xx;
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, arg_0.c.a) + vec2<f32>(1478f, -255f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1401f))))))));
    let var_1 = false;
    global2 = arg_1.xy;
    return ~abs(~(~arg_0.d.x)) >= u_input.a.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(-1000f, true);
    let var_1 = vec4<bool>(!(!(u_input.a.x == 46049u)), true, false, arg_0.x);
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_div_i32(-global2.x, global1[_wgslsmith_index_u32(~(u_input.a.x | 28745u), 6u)]), u_input.b.x);
    let var_3 = Struct_2(min(arg_1 << (vec4<u32>(u_input.a.x << (u_input.a.x % 32u), select(4294967295u, u_input.a.x, true), ~1u, countOneBits(0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-182i, 0i, -12747i, var_2)), ~(-9925i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13123u, u_input.a.x, u_input.a.x, 35996u), vec4<u32>(28596u, 42087u, 49957u, u_input.a.x)), 6u)]))), 1i, Struct_1(_wgslsmith_f_op_f32(abs(-459f)), arg_0.x), vec4<u32>(u_input.a.x, 30962u, max(_wgslsmith_mult_u32(_wgslsmith_div_u32(68315u, 12767u), abs(u_input.a.x)), ~u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), u_input.a.xy)));
    let var_4 = select(!vec3<bool>(all(!vec3<bool>(var_1.x, var_1.x, var_1.x)), var_3.c.b, false), var_1.wyz, func_3(Struct_2(_wgslsmith_mult_vec4_i32(select(var_3.a, vec4<i32>(arg_1.x, 0i, var_3.b, global1[_wgslsmith_index_u32(79213u, 6u)]), true), vec4<i32>(global1[_wgslsmith_index_u32(66475u, 6u)], 79032i, arg_1.x, 40151i) & vec4<i32>(-34201i, 16022i, global1[_wgslsmith_index_u32(var_3.d.x, 6u)], u_input.c.x)), reverseBits(var_2 >> (18334u % 32u)), var_3.c, var_3.d), _wgslsmith_mod_vec4_i32(var_3.a, countOneBits(_wgslsmith_sub_vec4_i32(var_3.a, arg_1)))));
    return Struct_2(reverseBits(u_input.b), -select(global2.x, _wgslsmith_add_i32(firstTrailingBit(-2147483647i), global2.x), true), var_3.c, var_3.d << (_wgslsmith_div_vec4_u32(var_3.d, ~_wgslsmith_div_vec4_u32(vec4<u32>(14113u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(4294967295u, 7515u, u_input.a.x, var_3.d.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_0.a >> (vec4<u32>(~arg_0.d.x ^ 4294967295u, 50261u, firstLeadingBit(arg_0.d.x), _wgslsmith_div_u32(u_input.a.x, ~arg_0.d.x)) % vec4<u32>(32u)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), arg_0.c, arg_0.d);
    global1 = array<i32, 6>();
    let var_1 = !((i32(-1i) * -14915i) != u_input.c.x);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xy >> (_wgslsmith_div_vec2_u32(arg_0.d.zw, vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), u_input.c.zz) << (~arg_0.d.x % 32u), select(max(~(global1[_wgslsmith_index_u32(1u, 6u)] & -2147483647i), firstLeadingBit(countOneBits(26621i))), abs(1i), false), -select(1i, _wgslsmith_dot_vec2_i32(arg_0.a.yz, vec2<i32>(-2147483647i, -1i)), var_1));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2(vec3<bool>(arg_0.c.b, arg_1.b, func_3(func_2(select(vec3<bool>(arg_0.c.b, false, arg_1.b), vec3<bool>(arg_3.c.b, arg_3.c.b, arg_1.b), vec3<bool>(true, true, true)), arg_0.a), countOneBits(vec4<i32>(0i, arg_3.b, arg_0.a.x, arg_2) << (vec4<u32>(31425u, 4294967295u, 56710u, 1u) % vec4<u32>(32u))))), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 6u)], arg_3.a.x, _wgslsmith_div_i32(~(~2147483647i), arg_2)));
    let var_1 = func_2(select(!select(vec3<bool>(arg_0.c.b, false, arg_0.c.b), vec3<bool>(var_0.c.b, arg_1.b, arg_1.b), false), !(!vec3<bool>(false, false, arg_1.b)), select(vec3<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b), !vec3<bool>(true, arg_3.c.b, false), arg_1.b)), ~(vec4<i32>(arg_3.b, -1i, var_0.b, arg_2) | -vec4<i32>(1i, arg_0.b, global2.x, 0i))).d.x & ~_wgslsmith_mod_u32(4294967295u, max(1u, var_0.d.x) >> (~arg_3.d.x % 32u));
    var var_2 = vec4<u32>(4878u, u_input.a.x, _wgslsmith_clamp_u32(45929u, 4294967295u & var_0.d.x, arg_3.d.x), ~(~(~(~0u))));
    global2 = arg_3.a.zy;
    let var_3 = Struct_2(func_2(!select(!vec3<bool>(var_0.c.b, arg_3.c.b, false), vec3<bool>(false, true, arg_1.b), !var_0.c.b), func_2(!vec3<bool>(arg_0.c.b, var_0.c.b, arg_0.c.b), reverseBits(arg_0.a)).a).a, _wgslsmith_sub_i32(-57179i, _wgslsmith_div_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(39294u, 6u)], global2.x), 0i) & _wgslsmith_add_i32(1i, global1[_wgslsmith_index_u32(0u, 6u)])), Struct_1(arg_1.a, arg_1.b), vec4<u32>(~1u, func_4(Struct_2(u_input.c, global1[_wgslsmith_index_u32(var_2.x, 6u)], Struct_1(arg_3.c.a, arg_0.c.b), arg_3.d)).d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(82422u, var_2.x, 30679u)) ^ ~_wgslsmith_mult_u32(var_0.d.x, var_0.d.x), func_2(select(vec3<bool>(false, true, arg_0.c.b), !vec3<bool>(arg_3.c.b, var_0.c.b, false), true), vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, -25822i, -1i, 1i)).d.x));
    return func_4(func_4(Struct_2(vec4<i32>(-49967i, _wgslsmith_dot_vec3_i32(arg_3.a.www, vec3<i32>(arg_0.b, arg_0.b, -2147483647i)), -arg_3.b, func_2(vec3<bool>(false, arg_0.c.b, false), vec4<i32>(-71611i, 1i, 2131i, 0i)).a.x), var_3.a.x, arg_0.c, vec4<u32>(abs(var_1), select(arg_0.d.x, var_2.x, arg_3.c.b), min(4294967295u, var_0.d.x), arg_3.d.x)))).c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_i32(max(-vec3<i32>(15524i, 5012i, ~arg_1.a.x), -(~select(vec3<i32>(arg_0.a.x, -22510i, 11386i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.d.x, 6u)], arg_1.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), true))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, i32(-1i) * -27196i, u_input.b.x), reverseBits(abs(arg_0.a.xzy) << (firstTrailingBit(vec3<u32>(u_input.a.x, arg_1.d.x, arg_1.d.x)) % vec3<u32>(32u)))));
    var var_1 = arg_1.c.a;
    var var_2 = arg_2;
    var var_3 = arg_1.c.a;
    var var_4 = ~30116u;
    return Struct_2(min(_wgslsmith_mod_vec4_i32(arg_0.a, -vec4<i32>(u_input.b.x, arg_0.b, arg_1.b, u_input.b.x)), ~_wgslsmith_mod_vec4_i32(arg_1.a, vec4<i32>(-1i, u_input.c.x, u_input.b.x, 34730i))) & ~func_2(select(vec3<bool>(arg_2.b, true, arg_1.c.b), vec3<bool>(arg_0.c.b, var_2.b, false), false), abs(arg_1.a)).a, 32759i, Struct_1(838f, false), func_2(!vec3<bool>(!var_2.b, true && arg_1.c.b, var_0.x < 74661i), abs(~(vec4<i32>(global2.x, arg_1.a.x, -1i, 0i) ^ arg_1.a))).d);
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<vec2<bool>, 29>();
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(972f, _wgslsmith_f_op_f32(-global3.x))));
    return func_6(Struct_2(max(max(select(vec4<i32>(28952i, 256i, u_input.c.x, 26206i), var_0, true), select(u_input.c, vec4<i32>(global2.x, u_input.c.x, 2147483647i, global2.x), false)), vec4<i32>(firstLeadingBit(0i), ~var_0.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], -5011i), ~22401i)), _wgslsmith_clamp_i32(-28417i, ~0i, ~var_0.x) >> (32692u % 32u), func_5(func_4(func_2(vec3<bool>(false, true, true), var_0)), Struct_1(_wgslsmith_div_f32(arg_0.x, var_1.x), func_2(vec3<bool>(false, false, false), var_0).c.b), -2147483647i, Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(5949u, 6u)], -3267i, u_input.c.x, u_input.b.x), ~global1[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(701f, false), ~vec4<u32>(46660u, u_input.a.x, u_input.a.x, 56988u))), select(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(32189u, 18333u), u_input.a.x), reverseBits(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true))), func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), (-2147483647i >> (u_input.a.x % 32u)) == abs(-2147483647i)), ~vec4<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 6u)], global2.x), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global2.x), firstLeadingBit(-4821i), ~2147483647i)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, 1490f)) - global3.x))), !select(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1545f, global3.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, -858f, global3.x)))))));
    global1 = array<i32, 6>();
    var var_1 = func_6(func_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2246f))), var_0.c.a, _wgslsmith_f_op_f32(-var_0.c.a))), func_2(select(vec3<bool>(var_0.c.b, false, var_0.c.b && true), vec3<bool>(true, all(vec3<bool>(false, var_0.c.b, var_0.c.b)), !var_0.c.b), var_0.c.b), u_input.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x - global3.x)))), !(!all(vec2<bool>(true, var_0.c.b)))));
    var var_2 = min(-global1[_wgslsmith_index_u32(4408u >> (var_1.d.x % 32u), 6u)], _wgslsmith_clamp_i32(var_0.a.x, global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, 1835f, -381f), vec3<f32>(global3.x, global3.x, 1218f))) - vec3<f32>(-363f, 639f, global3.x))).d.x, 6u)], ~global2.x));
    global3 = vec2<f32>(1333f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-114f + -372f), var_1.c.a) * 359f));
    global0 = array<vec2<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zzy, global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1100f, func_2(!vec3<bool>(var_0.c.b, true, var_1.c.b), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(1i, var_0.b, -2147483647i, global1[_wgslsmith_index_u32(0u, 6u)]))).c.a) - -1386f), global1[_wgslsmith_index_u32(reverseBits(~firstLeadingBit(~14999u)), 6u)]);
}

