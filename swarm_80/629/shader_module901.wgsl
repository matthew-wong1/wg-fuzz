struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(true, Struct_1(vec3<i32>(1i, 1i, -1i), i32(-2147483648), vec4<u32>(1u, 1u, 32283u, 0u), 1i), vec3<bool>(true, false, false)), Struct_3(false, Struct_1(vec3<i32>(2147483647i, 27047i, 0i), i32(-2147483648), vec4<u32>(1u, 1234u, 0u, 4294967295u), -28138i), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(vec3<i32>(-30759i, i32(-2147483648), -13507i), i32(-2147483648), vec4<u32>(1u, 4294967295u, 47621u, 25092u), 2147483647i), vec3<bool>(true, false, true)), Struct_3(false, Struct_1(vec3<i32>(-26147i, -49927i, i32(-2147483648)), 7730i, vec4<u32>(70339u, 4294967295u, 6047u, 11054u), 46215i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(-16366i, 29051i, -1i), -4513i, vec4<u32>(1u, 13092u, 72588u, 4294967295u), 39797i), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(vec3<i32>(46973i, i32(-2147483648), i32(-2147483648)), -1i, vec4<u32>(47476u, 15759u, 76473u, 19878u), 0i), vec3<bool>(true, true, true)), Struct_3(true, Struct_1(vec3<i32>(-1i, 0i, 9340i), -13254i, vec4<u32>(103518u, 56287u, 4294967295u, 34133u), -1i), vec3<bool>(false, true, false)), Struct_3(true, Struct_1(vec3<i32>(i32(-2147483648), 18305i, 0i), 0i, vec4<u32>(4294967295u, 33325u, 4294967295u, 4294967295u), -52422i), vec3<bool>(false, false, true)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), 11908i, 0i), 0i, vec4<u32>(1u, 0u, 0u, 37692u), 29008i), vec3<bool>(false, false, true)), Struct_3(true, Struct_1(vec3<i32>(1i, -1i, 2147483647i), 0i, vec4<u32>(88517u, 4528u, 61899u, 4294967295u), -8148i), vec3<bool>(true, false, false)), Struct_3(true, Struct_1(vec3<i32>(-35902i, -1i, -26107i), 4154i, vec4<u32>(4294967295u, 44743u, 0u, 76874u), -35372i), vec3<bool>(false, true, false)), Struct_3(true, Struct_1(vec3<i32>(-82224i, 1i, 0i), i32(-2147483648), vec4<u32>(0u, 5740u, 28265u, 1u), 2147483647i), vec3<bool>(false, false, false)), Struct_3(false, Struct_1(vec3<i32>(-27879i, -1i, -30847i), i32(-2147483648), vec4<u32>(1u, 4294967295u, 25758u, 0u), -9621i), vec3<bool>(true, true, true)), Struct_3(true, Struct_1(vec3<i32>(-1i, 0i, -10478i), -1i, vec4<u32>(83811u, 4294967295u, 29569u, 4294967295u), -17575i), vec3<bool>(false, true, false)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), -12064i, 66306i), i32(-2147483648), vec4<u32>(4294967295u, 25976u, 0u, 86550u), i32(-2147483648)), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(18507i, 16522i, 1i), 36619i, vec4<u32>(4294967295u, 1u, 17479u, 12531u), 2147483647i), vec3<bool>(false, true, false)), Struct_3(true, Struct_1(vec3<i32>(7933i, 0i, -56640i), 34344i, vec4<u32>(32833u, 9343u, 4294967295u, 1u), 31020i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 71288i), -1i, vec4<u32>(1u, 0u, 4294967295u, 64841u), -5454i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(-1i, -2566i, 6065i), 2147483647i, vec4<u32>(24022u, 16999u, 112534u, 26091u), 24052i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(-1i, 1i, -147i), 2147483647i, vec4<u32>(4294967295u, 69927u, 1u, 4294967295u), -1i), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(vec3<i32>(-58152i, i32(-2147483648), i32(-2147483648)), -13490i, vec4<u32>(1u, 0u, 4294967295u, 1u), 94215i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), 0i, -54411i), -14664i, vec4<u32>(9477u, 86834u, 39522u, 84551u), -1i), vec3<bool>(true, true, false)), Struct_3(true, Struct_1(vec3<i32>(63081i, 2147483647i, 2147483647i), 1252i, vec4<u32>(22754u, 4294967295u, 5545u, 4294967295u), 1i), vec3<bool>(true, true, false)), Struct_3(false, Struct_1(vec3<i32>(1i, 0i, 28898i), 2147483647i, vec4<u32>(4294967295u, 55366u, 23477u, 10979u), 1693i), vec3<bool>(false, false, true)), Struct_3(false, Struct_1(vec3<i32>(-3484i, -7153i, -35746i), 1i, vec4<u32>(4294967295u, 4294967295u, 20073u, 24200u), 12078i), vec3<bool>(true, false, false)), Struct_3(true, Struct_1(vec3<i32>(45003i, -5305i, 1i), -1i, vec4<u32>(0u, 20418u, 4294967295u, 0u), -1i), vec3<bool>(false, false, false)), Struct_3(true, Struct_1(vec3<i32>(0i, -1i, 34833i), 37535i, vec4<u32>(1u, 1u, 112552u, 35937u), 40328i), vec3<bool>(true, false, false)), Struct_3(true, Struct_1(vec3<i32>(71905i, i32(-2147483648), -72779i), i32(-2147483648), vec4<u32>(79999u, 4294967295u, 1u, 4294967295u), 20705i), vec3<bool>(false, true, false)), Struct_3(false, Struct_1(vec3<i32>(1820i, i32(-2147483648), 2147483647i), -25641i, vec4<u32>(29923u, 27738u, 4294967295u, 46673u), i32(-2147483648)), vec3<bool>(false, true, true)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-599f - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(global0.a.x * -1035f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2516f), -105f)))), global2.b.x, _wgslsmith_f_op_f32(step(global0.a.x, 883f)));
    let var_1 = abs(_wgslsmith_mod_vec2_u32(global0.e.c.yy, countOneBits(vec2<u32>(4294967295u, arg_1.x) >> (vec2<u32>(arg_3.x, arg_0) % vec2<u32>(32u))) | vec2<u32>(1u, 3214u)));
    var var_2 = global2.e;
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(-global0.a.wwz), 21181u, _wgslsmith_add_u32(global0.c, 57688u), global2.e);
    global1 = array<vec3<i32>, 15>();
    return _wgslsmith_f_op_f32(-418f + var_0.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    var var_0 = max(0u, _wgslsmith_add_u32(64238u, ~(arg_0.b.c.x >> (global2.e.c.x % 32u))));
    let var_1 = arg_0.b;
    var_0 = ~var_1.c.x & 36959u;
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(210f, -820f, global2.b.x, global2.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1034f, -149f, global0.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global2.a.x + global0.b.x), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), 627f, _wgslsmith_f_op_f32(global0.b.x + 220f), _wgslsmith_f_op_f32(-global2.a.x)), global0.a)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), -1335f))), _wgslsmith_f_op_f32(func_3(arg_0.b.c.x, vec4<u32>(abs(var_1.c.x), global2.d, firstTrailingBit(global2.e.c.x), 1u), !all(vec3<bool>(arg_0.a, true, false)), _wgslsmith_sub_vec4_u32(~global2.e.c, vec4<u32>(global2.c, 44046u, arg_0.b.c.x, global2.d)))), -1896f), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, u_input.b), global2.e.c) | _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.b.c.x, 1u, 0u), vec4<u32>(99443u, 0u, arg_0.b.c.x, global0.c)), global2.e.c), u_input.b, Struct_1(~max(firstLeadingBit(u_input.a.zwy), -arg_0.b.a), -2147483647i, select(select(global2.e.c, var_1.c, vec4<bool>(arg_0.a, arg_0.a, false, true)), ~vec4<u32>(21881u, 5280u, u_input.d, u_input.d) | arg_0.b.c, select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.a), vec4<bool>(true, false, false, arg_0.c.x), arg_0.c.x)), _wgslsmith_mod_i32(-590i, arg_1.x)));
    let var_2 = (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, arg_0.b.c.x, var_1.c.x), vec3<u32>(global0.d, 0u, var_1.c.x))) >> ((global2.e.c.yyw & vec3<u32>(_wgslsmith_div_u32(1u, arg_0.b.c.x), _wgslsmith_add_u32(u_input.d, 16390u), var_1.c.x)) % vec3<u32>(32u))) & (vec3<u32>(arg_0.b.c.x, 12911u, arg_0.b.c.x) >> (global0.e.c.yxy % vec3<u32>(32u)));
    return true != all(select(select(arg_0.c, vec3<bool>(arg_0.a, false, false), arg_0.c), vec3<bool>(false, arg_0.c.x, any(vec3<bool>(false, true, arg_0.a))), arg_0.c));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.b.x, global0.a.x, 144f, -798f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1993f)));
    global3 = array<Struct_3, 29>();
    let var_2 = arg_3.c.yz;
    var var_3 = any(vec3<bool>(all(vec4<bool>(select(arg_3.c.x, true, var_2.x), true, all(vec3<bool>(var_2.x, arg_3.c.x, arg_3.a)), !var_2.x)), true, any(vec4<bool>(any(vec3<bool>(false, var_2.x, true)), var_2.x, arg_3.c.x, select(true, false, arg_3.a)))));
    return countOneBits(-18786i << (abs(global2.e.c.x) % 32u));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(max(u_input.a.ywy, _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), global0.e.a), select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0.c), 15u)], u_input.a.ywx, vec3<bool>(true, false, true)), global2.e.a)), select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(23139i, u_input.a.x, 8851i, global0.e.a.x) & u_input.a, u_input.a), -abs(u_input.a)), global0.e.a.x >> (abs(firstTrailingBit(58996u)) % 32u), _wgslsmith_div_i32(0i, -global0.e.a.x) <= (1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 21712u), vec2<u32>(global2.c, 0u)) % 32u))), global0.e.c, func_4(_wgslsmith_f_op_vec2_f32(-global2.a.xy), ~(vec4<i32>(u_input.a.x, -27405i, 46368i, u_input.c) << ((vec4<u32>(1u, global2.d, global0.d, global0.e.c.x) ^ global0.e.c) % vec4<u32>(32u))), vec3<u32>(u_input.d, _wgslsmith_sub_u32(firstLeadingBit(3253u), u_input.b << (global2.e.c.x % 32u)), 1u), Struct_3(!func_2(global3[_wgslsmith_index_u32(18110u, 29u)], u_input.a.xxz), Struct_1(_wgslsmith_div_vec3_i32(u_input.a.yxy, u_input.a.yzz), 0i, _wgslsmith_sub_vec4_u32(global0.e.c, global0.e.c), global2.e.d), vec3<bool>(false, true, u_input.c != global2.e.a.x))));
    var var_1 = Struct_2(vec4<f32>(575f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1181f, global2.a.x)), _wgslsmith_f_op_f32(floor(-168f))))), _wgslsmith_f_op_f32(ceil(1000f)), -262f), _wgslsmith_f_op_vec3_f32(max(global2.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(global0.a.wzx)))))), max(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, 7704u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.c, 1u, u_input.b), vec4<u32>(global2.d, 14586u, 1u, 4294967295u)))), 16340u | ~_wgslsmith_mod_u32(u_input.b, 3764u)), ~var_0.c.x, var_0);
    let var_2 = var_1.b.x;
    let var_3 = vec2<bool>(true, true);
    var_1 = Struct_2(vec4<f32>(global2.a.x, 1234f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -147f), global0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.b.x, -780f, false))))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(975f + -361f) + global2.a.x), _wgslsmith_f_op_f32(abs(1161f)))), global2.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), ~var_1.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(u_input.d) & global2.e.c.x, 1u), ~(~4294967295u)), var_1.e);
    return StorageBuffer(firstTrailingBit(countOneBits(firstTrailingBit(_wgslsmith_mult_vec2_u32(global0.e.c.wz, var_0.c.yw)))), -190f, 3304i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-15843i, global0.e.d, 0i, global2.e.d), u_input.a) << (~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37071u), vec2<u32>(26658u, global0.c))) % 32u), 51715i);
    let x = u_input.a;
    s_output = func_1();
}

