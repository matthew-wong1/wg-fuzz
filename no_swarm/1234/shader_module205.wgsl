struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(24970u, 4294967295u, 86899u, 4294967295u), vec4<u32>(0u, 0u, 0u, 24682u), vec4<u32>(25643u, 28164u, 1u, 0u), vec4<u32>(0u, 65159u, 19121u, 3570u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 60602u), vec4<u32>(25784u, 15370u, 11693u, 2557u), vec4<u32>(20527u, 1u, 0u, 33690u), vec4<u32>(1u, 4294967295u, 0u, 43801u), vec4<u32>(43799u, 24452u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 52514u, 1u), vec4<u32>(6592u, 1u, 1u, 1u), vec4<u32>(18530u, 57792u, 1u, 1u), vec4<u32>(1u, 35057u, 39474u, 55305u), vec4<u32>(20427u, 0u, 4294967295u, 36835u), vec4<u32>(42005u, 33444u, 4294967295u, 57696u), vec4<u32>(4294967295u, 0u, 16484u, 31405u), vec4<u32>(63049u, 4294967295u, 71478u, 36375u), vec4<u32>(74390u, 4294967295u, 0u, 1u), vec4<u32>(6059u, 68451u, 1u, 84543u), vec4<u32>(1u, 4294967295u, 26809u, 38607u), vec4<u32>(0u, 0u, 16128u, 9796u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(8412u, 0u, 6018u, 1u), vec4<u32>(1u, 600u, 29748u, 70072u), vec4<u32>(4294967295u, 35493u, 4294967295u, 2958u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(8366u, 1u, 1u, 34767u), vec4<u32>(4294967295u, 13686u, 10255u, 49136u), vec4<u32>(40934u, 1u, 38632u, 49335u), vec4<u32>(4294967295u, 0u, 0u, 10299u), vec4<u32>(0u, 32603u, 0u, 52129u));

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 2>;

var<private> global3: array<f32, 4> = array<f32, 4>(-169f, -1000f, -823f, -188f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_sub_u32(14846u, ~u_input.a.x);
    var var_1 = Struct_4(Struct_1(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.b)) | select(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(global1.x, global1.x)), vec2<i32>(firstLeadingBit(-2147483647i), -42133i)), u_input.a, global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, 382f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 2u)], 4u)], 1069f) * vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(95555u, 4u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(4294967295u, 4u)])), global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 9601u), 4u)], -163f), vec4<f32>(-808f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(25606u, 4u)] - global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_0, 2u)], 4u)], _wgslsmith_f_op_f32(f32(-1f) * -1745f))))), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(4294967295u)), 2u)], 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<u32>(u_input.c.x, 0u, u_input.c.x), any(global1.wzy), vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92116u, 2u)], 4u)], global3[_wgslsmith_index_u32(1u, 4u)])), Struct_1(-vec2<i32>(u_input.b, 23695i), select(u_input.a, vec3<u32>(var_0, 0u, 4294967295u), vec3<bool>(global1.x, false, false)), false, vec2<f32>(-432f, -763f)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -36491i), vec2<i32>(u_input.b, u_input.b)), vec3<u32>(var_0, 0u, 37007u), false, _wgslsmith_div_vec2_f32(vec2<f32>(1426f, -133f), vec2<f32>(global3[_wgslsmith_index_u32(19751u, 4u)], 683f))))));
    let var_2 = var_1.d.a;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.a.d.x))));
    let var_4 = var_2.a.a.x;
    return select(select(select(vec4<bool>(global1.x || var_1.d.a.c.c, true && var_1.a.c, global1.x, var_2.a.c), vec4<bool>(true, true, all(vec3<bool>(var_2.c.c, global1.x, var_2.c.c)), var_1.b.x >= global3[_wgslsmith_index_u32(0u, 4u)]), var_1.d.a.b.c), select(select(select(vec4<bool>(true, var_2.b.c, false, global1.x), vec4<bool>(true, var_1.d.a.c.c, global1.x, true), false), vec4<bool>(false, var_2.b.c, true, var_2.a.c), var_0 < global2[_wgslsmith_index_u32(var_1.a.b.x, 2u)]), !vec4<bool>(var_1.a.c, false, var_2.c.c, var_2.a.c), any(global1.zwz)), !vec4<bool>(true, false, var_2.a.c, select(false, global1.x, true))), !(!select(vec4<bool>(var_1.a.c, true, var_1.a.c, false), vec4<bool>(true, true, true, true), global1.x)), !(!select(select(vec4<bool>(false, var_1.a.c, true, var_1.d.a.b.c), vec4<bool>(true, var_2.c.c, false, global1.x), vec4<bool>(var_2.a.c, true, var_2.b.c, true)), !vec4<bool>(global1.x, global1.x, true, var_1.d.a.b.c), global1.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    global3 = array<f32, 4>();
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, u_input.b, -(~arg_1.d.a.b.a.x)), ~(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-18760i, u_input.b, 57709i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a.a.x, u_input.b, arg_2.a.a.x), vec3<i32>(arg_2.a.a.x, -37769i, arg_2.d.a.b.a.x)))));
    var_0 = ~(~(~firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, -1i) & vec3<i32>(var_0.x, arg_1.a.a.x, u_input.b))));
    global1 = func_3();
    var var_1 = _wgslsmith_sub_u32(91904u, ~max(_wgslsmith_mod_u32(1u ^ global2[_wgslsmith_index_u32(arg_2.d.a.a.b.x, 2u)], firstLeadingBit(arg_2.d.a.b.b.x)), arg_2.d.a.b.b.x));
    return Struct_2(Struct_1(arg_1.a.a, ~abs(vec3<u32>(672u, arg_0.x, 4294967295u)), false, vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4536u, 4u)], arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(1u, 4u)], 1000f, arg_1.a.c))))), arg_2.a, Struct_1(-var_0.xx, ~firstTrailingBit(arg_0.xyz), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.a.c.d)) + _wgslsmith_f_op_vec2_f32(-arg_1.d.a.b.d))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<i32>) -> vec3<u32> {
    global0 = array<vec4<u32>, 32>();
    var var_0 = arg_0.b;
    global3 = array<f32, 4>();
    let var_1 = arg_1.a;
    global3 = array<f32, 4>();
    return ~(_wgslsmith_sub_vec3_u32(arg_1.a.b, arg_0.c.b) ^ vec3<u32>(arg_1.d.a.b.b.x, global2[_wgslsmith_index_u32(arg_0.c.b.x, 2u)], ~(8676u | var_0.b.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    global0 = array<vec4<u32>, 32>();
    let var_0 = global1.x;
    global3 = array<f32, 4>();
    var var_1 = true;
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_2.a), ~vec2<i32>(arg_2.a.x, u_input.b)), (vec3<u32>(u_input.c.x, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 2u)]) >> (~arg_2.b % vec3<u32>(32u))) & func_4(func_2(global0[_wgslsmith_index_u32(69194u, 32u)], Struct_4(Struct_1(arg_2.a, u_input.c, true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 4u)], arg_2.d.x)), vec4<f32>(-378f, global3[_wgslsmith_index_u32(1u, 4u)], -930f, 400f), global3[_wgslsmith_index_u32(82909u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(arg_2.a.x, -2147483647i), arg_2.b, true, vec2<f32>(arg_0, 1486f)), Struct_1(arg_2.a, vec3<u32>(58803u, 1u, 4178u), arg_1.x, vec2<f32>(arg_0, arg_2.d.x)), Struct_1(vec2<i32>(u_input.b, 2147483647i), u_input.a, arg_2.c, arg_2.d)))), Struct_4(arg_2, vec4<f32>(arg_2.d.x, arg_0, arg_0, 1000f), global3[_wgslsmith_index_u32(11870u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, 0i), u_input.a, global1.x, vec2<f32>(-1000f, 340f)), Struct_1(arg_2.a, vec3<u32>(1u, 1u, 1u), false, arg_2.d), Struct_1(arg_2.a, vec3<u32>(19247u, 1u, 51602u), global1.x, vec2<f32>(global3[_wgslsmith_index_u32(1u, 4u)], 1024f)))))), Struct_4(arg_2, vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], -1000f, global3[_wgslsmith_index_u32(arg_2.b.x, 4u)], arg_0), arg_2.d.x, Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), vec3<u32>(23240u, 31324u, u_input.c.x), arg_2.c, vec2<f32>(117f, 843f)), arg_2, arg_2))), vec3<i32>(u_input.b, -27768i, arg_2.a.x)), global1.x, arg_2.d), arg_2, func_2(vec4<u32>(u_input.a.x, ~arg_2.b.x, 11521u, ~_wgslsmith_mult_u32(u_input.a.x, 0u)), Struct_4(func_2(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(32068u, 2u)], 60167u, 1u) << (vec4<u32>(u_input.a.x, u_input.c.x, global2[_wgslsmith_index_u32(0u, 2u)], arg_2.b.x) % vec4<u32>(32u)), Struct_4(arg_2, vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 777f, 682f, arg_2.d.x), -1000f, Struct_3(Struct_2(arg_2, arg_2, arg_2))), Struct_4(Struct_1(vec2<i32>(u_input.b, arg_2.a.x), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], arg_2.b.x), arg_2.c, vec2<f32>(133f, 482f)), vec4<f32>(-167f, 645f, arg_0, -1182f), 446f, Struct_3(Struct_2(arg_2, Struct_1(vec2<i32>(arg_2.a.x, u_input.b), u_input.c, arg_2.c, arg_2.d), arg_2)))).c, vec4<f32>(func_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_4(arg_2, vec4<f32>(-993f, 1000f, -447f, 1270f), global3[_wgslsmith_index_u32(0u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), u_input.a, global1.x, arg_2.d), arg_2, Struct_1(arg_2.a, arg_2.b, arg_1.x, vec2<f32>(arg_2.d.x, global3[_wgslsmith_index_u32(arg_2.b.x, 4u)]))))), Struct_4(Struct_1(vec2<i32>(arg_2.a.x, 0i), arg_2.b, arg_2.c, arg_2.d), vec4<f32>(arg_2.d.x, -1000f, -1627f, -158f), 1000f, Struct_3(Struct_2(Struct_1(arg_2.a, arg_2.b, arg_2.c, arg_2.d), Struct_1(arg_2.a, vec3<u32>(u_input.c.x, 0u, 31657u), true, vec2<f32>(arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), arg_2)))).b.d.x, arg_0, -716f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 4u)], -884f, arg_1.x))), -219f, Struct_3(Struct_2(arg_2, arg_2, arg_2))), Struct_4(Struct_1(~arg_2.a, u_input.a, all(arg_1.yyy), arg_2.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(640f, arg_0, arg_0, 118f), vec4<f32>(-689f, 1000f, global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 377f))) * vec4<f32>(arg_0, arg_0, arg_0, 478f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16881u, 4u)]))), Struct_3(Struct_2(arg_2, arg_2, Struct_1(vec2<i32>(-7003i, -3260i), vec3<u32>(4294967295u, arg_2.b.x, 22306u), arg_2.c, vec2<f32>(642f, 631f)))))).c);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~vec2<i32>(~u_input.b, firstLeadingBit(u_input.b))));
    global1 = vec4<bool>((all(vec2<bool>(true, true)) || false) || !global1.x, !(u_input.b != -(var_0.x << (60580u % 32u))), 4294967295u > global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_1(1521f, vec4<bool>(global1.x, false, false, global1.x), Struct_1(var_0, vec3<u32>(u_input.a.x, 12522u, global2[_wgslsmith_index_u32(1u, 2u)]), true, vec2<f32>(-429f, -548f))), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)]), 2u)], !all(global1.yw));
    var var_1 = vec3<bool>(global1.x | any(select(func_3(), vec4<bool>(true, global1.x, global1.x, true), true)), any(!(!global1.zxz)), global1.x);
    let var_2 = select(!vec3<bool>(false, !var_1.x, !var_1.x), !func_3().zwz, select(func_3().wzw, global1.wzz, global1.yzw));
    let var_3 = Struct_4(Struct_1(~countOneBits(-vec2<i32>(-5578i, var_0.x)), func_2(~vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(77433u, 2u)], global2[_wgslsmith_index_u32(58150u, 2u)], u_input.a.x), Struct_4(Struct_1(var_0, u_input.a, true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70708u, 2u)], 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 4u)])), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 265f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(30248u, 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(1u, 4u)], 1146f, global3[_wgslsmith_index_u32(69673u, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 4u)]), Struct_3(Struct_2(Struct_1(vec2<i32>(12009i, u_input.b), u_input.a, var_1.x, vec2<f32>(1366f, -238f)), Struct_1(vec2<i32>(1i, 11067i), u_input.a, true, vec2<f32>(259f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48405u, 2u)], 4u)])), Struct_1(var_0, u_input.a, false, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -570f))))), Struct_4(func_2(global0[_wgslsmith_index_u32(52360u, 32u)], Struct_4(Struct_1(var_0, u_input.c, global1.x, vec2<f32>(-963f, global3[_wgslsmith_index_u32(1u, 4u)])), vec4<f32>(-634f, -1167f, 422f, global3[_wgslsmith_index_u32(33119u, 4u)]), -501f, Struct_3(Struct_2(Struct_1(var_0, vec3<u32>(global2[_wgslsmith_index_u32(67408u, 2u)], 0u, u_input.c.x), var_2.x, vec2<f32>(960f, 125f)), Struct_1(vec2<i32>(var_0.x, -1i), u_input.a, true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55164u, 2u)], 4u)], 398f)), Struct_1(vec2<i32>(37746i, -2147483647i), u_input.c, var_1.x, vec2<f32>(610f, -1013f))))), Struct_4(Struct_1(var_0, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(89743u, 2u)], 2u)], 2u)], 0u, 1u), var_2.x, vec2<f32>(-882f, global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), vec4<f32>(global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(33928u, 4u)], 533f), global3[_wgslsmith_index_u32(35847u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(19230i, -8146i), u_input.a, var_2.x, vec2<f32>(489f, -571f)), Struct_1(vec2<i32>(u_input.b, -2147483647i), u_input.c, var_1.x, vec2<f32>(global3[_wgslsmith_index_u32(27997u, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 4u)])), Struct_1(var_0, u_input.a, true, vec2<f32>(253f, -105f)))))).a, vec4<f32>(-1064f, global3[_wgslsmith_index_u32(5621u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], 364f), _wgslsmith_f_op_f32(-383f + global3[_wgslsmith_index_u32(38237u, 4u)]), Struct_3(Struct_2(Struct_1(var_0, vec3<u32>(u_input.c.x, 74180u, 35948u), var_1.x, vec2<f32>(428f, global3[_wgslsmith_index_u32(u_input.c.x, 4u)])), Struct_1(vec2<i32>(var_0.x, -2147483647i), vec3<u32>(0u, u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), global1.x, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4u)], 1938f)), Struct_1(var_0, u_input.a, var_1.x, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 1067f)))))).c.b, func_3().x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -143f), vec2<f32>(-433f, global3[_wgslsmith_index_u32(47287u, 4u)])))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-399f, 1638f)), 825f), global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(func_4(Struct_2(Struct_1(vec2<i32>(-40552i, var_0.x), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 2u)], 4294967295u), true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4199u, 2u)], 2u)], 4u)])), Struct_1(vec2<i32>(u_input.b, 23757i), u_input.a, var_1.x, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 4u)], 1544f)), Struct_1(vec2<i32>(1346i, 2147483647i), u_input.a, true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 4u)], 534f))), Struct_4(Struct_1(vec2<i32>(var_0.x, -2147483647i), u_input.a, var_1.x, vec2<f32>(339f, global3[_wgslsmith_index_u32(39908u, 4u)])), vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 4u)], -2206f, global3[_wgslsmith_index_u32(23880u, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68736u, 2u)], 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(19656i, 704i), u_input.c, false, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -191f)), Struct_1(var_0, vec3<u32>(26694u, global2[_wgslsmith_index_u32(50867u, 2u)], 4294967295u), false, vec2<f32>(-467f, 688f)), Struct_1(var_0, vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), false, vec2<f32>(509f, global3[_wgslsmith_index_u32(u_input.c.x, 4u)]))))), -vec3<i32>(18353i, 51468i, 48939i)).x, 4u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(811f, global3[_wgslsmith_index_u32(38640u, 4u)]) * -675f)), vec4<f32>(895f, global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(u_input.c.x, 4u)], _wgslsmith_f_op_f32(f32(-1f) * -452f)), vec4<bool>(true, all(global1.yx), false, !(!var_2.x)))), func_2(select(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)] >> ((vec4<u32>(0u, 11672u, 0u, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]) >> (global0[_wgslsmith_index_u32(0u, 32u)] % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), (global1.x && true) || true), Struct_4(Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<u32>(17267u, 0u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), false, vec2<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.c.x, 4u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16363u, 2u)], 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(8948u, 4u)])), global3[_wgslsmith_index_u32(func_4(func_2(vec4<u32>(u_input.a.x, u_input.c.x, 3136u, 3388u), Struct_4(Struct_1(vec2<i32>(1527i, var_0.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 84462u, 40543u), false, vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 4u)])), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], -807f, global3[_wgslsmith_index_u32(4294967295u, 4u)], 1211f), global3[_wgslsmith_index_u32(0u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, 0i), u_input.c, false, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 479f)), Struct_1(var_0, vec3<u32>(global2[_wgslsmith_index_u32(5494u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 85635u), var_1.x, vec2<f32>(-1131f, global3[_wgslsmith_index_u32(67954u, 4u)])), Struct_1(var_0, u_input.c, false, vec2<f32>(524f, -1420f))))), Struct_4(Struct_1(vec2<i32>(2147483647i, var_0.x), vec3<u32>(u_input.a.x, 21170u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), false, vec2<f32>(-505f, 699f)), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 4u)], 244f, -171f), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56482u, 2u)], 2u)], 2u)], 4u)], Struct_3(Struct_2(Struct_1(var_0, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), true, vec2<f32>(1015f, global3[_wgslsmith_index_u32(u_input.c.x, 4u)])), Struct_1(vec2<i32>(var_0.x, u_input.b), u_input.c, global1.x, vec2<f32>(global3[_wgslsmith_index_u32(46530u, 4u)], -1000f)), Struct_1(var_0, vec3<u32>(4294967295u, 0u, u_input.a.x), false, vec2<f32>(-602f, -370f)))))), Struct_4(Struct_1(var_0, vec3<u32>(1u, u_input.a.x, 44245u), global1.x, vec2<f32>(295f, global3[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<f32>(global3[_wgslsmith_index_u32(30301u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -998f, global3[_wgslsmith_index_u32(37580u, 4u)]), global3[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(var_0.x, -1i), vec3<u32>(u_input.a.x, 23818u, u_input.c.x), var_2.x, vec2<f32>(999f, global3[_wgslsmith_index_u32(u_input.c.x, 4u)])), Struct_1(vec2<i32>(2147483647i, var_0.x), vec3<u32>(4294967295u, 25307u, global2[_wgslsmith_index_u32(49149u, 2u)]), var_1.x, vec2<f32>(1111f, -657f)), Struct_1(vec2<i32>(u_input.b, -2147483647i), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 1u, global2[_wgslsmith_index_u32(69307u, 2u)]), false, vec2<f32>(global3[_wgslsmith_index_u32(0u, 4u)], 1077f))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 1i, 119009i), vec3<i32>(11658i, -12404i, u_input.b), vec3<i32>(-2147483647i, var_0.x, -2147483647i))).x, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, 14399i), vec3<u32>(global2[_wgslsmith_index_u32(7075u, 2u)], 36020u, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), false, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -433f)), Struct_1(var_0, vec3<u32>(5360u, u_input.c.x, 30738u), true, vec2<f32>(-903f, 310f)), Struct_1(vec2<i32>(var_0.x, var_0.x), u_input.a, false, vec2<f32>(-518f, global3[_wgslsmith_index_u32(7710u, 4u)]))))), Struct_4(func_2(max(vec4<u32>(global2[_wgslsmith_index_u32(65276u, 2u)], 0u, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], u_input.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), Struct_4(Struct_1(vec2<i32>(var_0.x, -2147483647i), u_input.c, false, vec2<f32>(-1323f, -1000f)), vec4<f32>(1190f, 1352f, global3[_wgslsmith_index_u32(33172u, 4u)], global3[_wgslsmith_index_u32(u_input.c.x, 4u)]), global3[_wgslsmith_index_u32(4294967295u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(1i, -12037i), vec3<u32>(20349u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 0u), false, vec2<f32>(global3[_wgslsmith_index_u32(45445u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_1(var_0, u_input.a, false, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88183u, 2u)], 4u)], -1444f)), Struct_1(var_0, vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(40179u, 2u)], u_input.c.x), true, vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 451f))))), Struct_4(Struct_1(var_0, u_input.c, var_2.x, vec2<f32>(-488f, -370f)), vec4<f32>(1000f, 270f, 1483f, global3[_wgslsmith_index_u32(25006u, 4u)]), global3[_wgslsmith_index_u32(4294967295u, 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, -1i), vec3<u32>(16287u, global2[_wgslsmith_index_u32(0u, 2u)], u_input.a.x), var_1.x, vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)])), Struct_1(var_0, u_input.a, true, vec2<f32>(global3[_wgslsmith_index_u32(24217u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_1(vec2<i32>(var_0.x, var_0.x), u_input.a, false, vec2<f32>(466f, -1494f)))))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(50404u, 4u)], -762f, global3[_wgslsmith_index_u32(65371u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)]) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 865f, 602f, 1511f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(68357u, 4u)], 143f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22530u, 2u)], 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], -893f, 446f, -1279f), var_1.x))), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)]), 2u)], 4u)], Struct_3(Struct_2(Struct_1(var_0, vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 60534u), var_1.x, vec2<f32>(-1515f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 4u)])), Struct_1(vec2<i32>(28113i, var_0.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.c.x, 4294967295u), global1.x, vec2<f32>(-1729f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 4u)])), Struct_1(vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(4294967295u, 2u)]), var_1.x, vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45329u, 2u)], 4u)])))))).a.d.x, Struct_3(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, 19959u), global0[_wgslsmith_index_u32(0u, 32u)]), Struct_4(func_2(vec4<u32>(4294967295u, 82227u, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), Struct_4(Struct_1(var_0, vec3<u32>(u_input.a.x, 1u, 32899u), global1.x, vec2<f32>(1944f, global3[_wgslsmith_index_u32(39303u, 4u)])), vec4<f32>(265f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14453u, 2u)], 2u)], 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51467u, 2u)], 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 4u)]), -1000f, Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.b), u_input.c, true, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 4u)], -1007f)), Struct_1(var_0, u_input.c, global1.x, vec2<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), Struct_1(vec2<i32>(u_input.b, -1i), vec3<u32>(u_input.a.x, 0u, 0u), false, vec2<f32>(-332f, global3[_wgslsmith_index_u32(4294967295u, 4u)]))))), Struct_4(Struct_1(vec2<i32>(2147483647i, var_0.x), vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), false, vec2<f32>(-417f, global3[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]), 539f, Struct_3(Struct_2(Struct_1(vec2<i32>(var_0.x, var_0.x), u_input.a, global1.x, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_1(var_0, vec3<u32>(38391u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20536u, 2u)], 2u)], 69776u), false, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 2u)], 4u)])), Struct_1(vec2<i32>(-10047i, 17474i), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(67229u, 2u)], 0u), var_2.x, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 4u)], -852f)))))).c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(315f, 1822f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -290f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(40282u, 4u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_3(Struct_2(Struct_1(var_0, u_input.a, var_2.x, vec2<f32>(-1282f, 242f)), Struct_1(vec2<i32>(u_input.b, -13660i), u_input.a, global1.x, vec2<f32>(-1305f, -175f)), Struct_1(var_0, vec3<u32>(18992u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 51171u), var_2.x, vec2<f32>(global3[_wgslsmith_index_u32(11301u, 4u)], -570f))))), Struct_4(Struct_1(vec2<i32>(-2147483647i, var_0.x), u_input.c, var_2.x, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3473u, 2u)], 2u)], 2u)], 4u)], -1326f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1293f, global3[_wgslsmith_index_u32(38905u, 4u)], 218f, global3[_wgslsmith_index_u32(4294967295u, 4u)]) * vec4<f32>(-601f, 1849f, 185f, global3[_wgslsmith_index_u32(72070u, 4u)])), 184f, Struct_3(Struct_2(Struct_1(var_0, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(0u, 2u)], 4294967295u), true, vec2<f32>(global3[_wgslsmith_index_u32(30829u, 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 4u)])), Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), global1.x, vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47163u, 2u)], 4u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 4u)])), Struct_1(vec2<i32>(16431i, var_0.x), u_input.c, global1.x, vec2<f32>(557f, -479f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(func_4(var_3.d.a, Struct_4(var_3.d.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 4u)], 1844f, var_3.a.d.x, -170f)), global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_3.a.b.x, 2u)], 4u)], Struct_3(Struct_2(Struct_1(vec2<i32>(13669i, u_input.b), vec3<u32>(0u, var_3.a.b.x, var_3.d.a.c.b.x), true, vec2<f32>(var_3.b.x, var_3.d.a.b.d.x)), Struct_1(vec2<i32>(var_0.x, 9564i), vec3<u32>(83649u, var_3.d.a.a.b.x, global2[_wgslsmith_index_u32(0u, 2u)]), false, var_3.d.a.c.d), Struct_1(var_0, vec3<u32>(22790u, global2[_wgslsmith_index_u32(var_3.a.b.x, 2u)], 4294967295u), true, var_3.d.a.a.d)))), ~vec3<i32>(var_0.x, -23677i, u_input.b)).x, global2[_wgslsmith_index_u32(45718u, 2u)] ^ ~var_3.a.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(49556u, ~_wgslsmith_mod_u32(34410u, 62336u)), func_4(var_3.d.a, var_3, vec3<i32>(func_2(global0[_wgslsmith_index_u32(127018u, 32u)], var_3, var_3).c.a.x, ~var_3.d.a.a.a.x, 1i)).zx), vec3<u32>(_wgslsmith_sub_u32(~23482u << (~u_input.c.x % 32u), reverseBits(abs(0u))), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_3.a.b.x, 2u)], u_input.a.x, max(u_input.a.x, ~13506u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.a), reverseBits(~var_3.a.b))), 995f);
}

