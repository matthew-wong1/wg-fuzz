struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(true, 4294967295u), true, Struct_1(true, 0u), 15736u), Struct_3(Struct_1(true, 4294967295u), false, Struct_1(true, 4294967295u), 1u), Struct_3(Struct_1(false, 35456u), false, Struct_1(false, 0u), 0u), Struct_3(Struct_1(true, 0u), true, Struct_1(true, 27738u), 1u), Struct_3(Struct_1(true, 0u), false, Struct_1(false, 4294967295u), 7785u), Struct_3(Struct_1(false, 56994u), false, Struct_1(true, 41171u), 54112u), Struct_3(Struct_1(true, 18236u), true, Struct_1(false, 21955u), 4294967295u), Struct_3(Struct_1(true, 0u), false, Struct_1(false, 47449u), 34070u), Struct_3(Struct_1(true, 61604u), false, Struct_1(false, 0u), 31626u), Struct_3(Struct_1(true, 33847u), true, Struct_1(false, 4294967295u), 0u), Struct_3(Struct_1(true, 3297u), true, Struct_1(false, 20247u), 58508u), Struct_3(Struct_1(false, 30619u), false, Struct_1(true, 94719u), 0u), Struct_3(Struct_1(false, 83185u), false, Struct_1(true, 1u), 4294967295u), Struct_3(Struct_1(false, 0u), true, Struct_1(true, 65526u), 1u), Struct_3(Struct_1(false, 1151u), false, Struct_1(false, 57898u), 0u), Struct_3(Struct_1(false, 130839u), true, Struct_1(false, 49054u), 0u), Struct_3(Struct_1(false, 70258u), true, Struct_1(true, 4294967295u), 40696u), Struct_3(Struct_1(true, 4294967295u), false, Struct_1(true, 4437u), 24409u), Struct_3(Struct_1(true, 1u), false, Struct_1(false, 0u), 0u), Struct_3(Struct_1(false, 1u), false, Struct_1(true, 4294967295u), 0u), Struct_3(Struct_1(false, 4294967295u), false, Struct_1(true, 4294967295u), 51681u), Struct_3(Struct_1(false, 72984u), false, Struct_1(true, 0u), 1u), Struct_3(Struct_1(true, 38487u), false, Struct_1(false, 3065u), 4294967295u), Struct_3(Struct_1(true, 4294967295u), true, Struct_1(false, 1u), 13425u), Struct_3(Struct_1(false, 34415u), true, Struct_1(true, 66994u), 6193u));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, 75874u), Struct_1(true, 4294967295u), Struct_1(false, 1u), Struct_1(false, 30305u), Struct_1(true, 75504u), Struct_1(true, 5902u), Struct_1(true, 37096u), Struct_1(true, 121951u), Struct_1(false, 51467u), Struct_1(true, 4294967295u), Struct_1(true, 0u), Struct_1(false, 0u), Struct_1(false, 1u), Struct_1(true, 4294967295u), Struct_1(true, 1u), Struct_1(false, 4294967295u), Struct_1(true, 1u), Struct_1(false, 33407u), Struct_1(true, 34335u), Struct_1(false, 1u), Struct_1(false, 0u), Struct_1(true, 2562u), Struct_1(false, 0u));

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(40113u, 4294967295u), vec2<u32>(1u, 15431u));

var<private> global3: array<u32, 11> = array<u32, 11>(37942u, 0u, 1u, 1u, 0u, 23976u, 52165u, 4294967295u, 41385u, 0u, 53106u);

var<private> global4: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(false, 4294967295u), true, Struct_1(true, 0u), 1u), Struct_3(Struct_1(false, 1u), false, Struct_1(false, 30162u), 0u), Struct_3(Struct_1(false, 1u), true, Struct_1(false, 15503u), 2100u), Struct_3(Struct_1(true, 16244u), true, Struct_1(true, 18456u), 48777u), Struct_3(Struct_1(true, 78898u), true, Struct_1(false, 1u), 4214u), Struct_3(Struct_1(false, 18533u), true, Struct_1(true, 0u), 4294967295u), Struct_3(Struct_1(false, 4723u), false, Struct_1(true, 1u), 20939u), Struct_3(Struct_1(true, 0u), false, Struct_1(true, 1u), 0u), Struct_3(Struct_1(true, 1u), true, Struct_1(false, 4294967295u), 1u), Struct_3(Struct_1(true, 44900u), true, Struct_1(false, 1u), 4294967295u), Struct_3(Struct_1(true, 0u), true, Struct_1(false, 4294967295u), 1u), Struct_3(Struct_1(true, 4294967295u), false, Struct_1(false, 0u), 2956u), Struct_3(Struct_1(false, 48123u), true, Struct_1(false, 1u), 4294967295u), Struct_3(Struct_1(true, 4891u), true, Struct_1(false, 14252u), 34736u), Struct_3(Struct_1(false, 36389u), false, Struct_1(false, 57471u), 37020u), Struct_3(Struct_1(true, 83219u), true, Struct_1(false, 65804u), 71939u), Struct_3(Struct_1(true, 48438u), false, Struct_1(true, 1u), 0u), Struct_3(Struct_1(false, 4294967295u), false, Struct_1(false, 4294967295u), 4294967295u), Struct_3(Struct_1(true, 6169u), false, Struct_1(true, 0u), 4426u), Struct_3(Struct_1(true, 8593u), true, Struct_1(false, 8525u), 44563u), Struct_3(Struct_1(true, 4294967295u), false, Struct_1(false, 1u), 0u), Struct_3(Struct_1(false, 0u), false, Struct_1(false, 46965u), 0u), Struct_3(Struct_1(true, 21780u), true, Struct_1(true, 4757u), 25552u), Struct_3(Struct_1(false, 0u), true, Struct_1(false, 0u), 1u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> i32 {
    let var_0 = arg_0;
    global0 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(711f, _wgslsmith_f_op_f32(866f + 239f), all(vec2<bool>(false, var_0.a.a)))))))) - 1f);
    global4 = array<Struct_3, 24>();
    var var_2 = arg_1;
    return firstLeadingBit(-(~(~4642i))) >> (abs(1u) % 32u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = 48431i;
    global4 = array<Struct_3, 24>();
    var var_1 = vec4<bool>(_wgslsmith_div_i32(arg_0.x, arg_0.x) > -var_0, var_0 == var_0, false, false);
    var var_2 = Struct_2(!(!any(vec2<bool>(true, var_1.x))));
    let var_3 = Struct_2(~_wgslsmith_mod_i32(arg_0.x >> (global3[_wgslsmith_index_u32(u_input.d, 11u)] % 32u), -arg_0.x) < 12435i);
    return Struct_1(_wgslsmith_mod_i32(var_0, firstTrailingBit(~arg_0.x)) != (-func_3(Struct_3(Struct_1(true, global3[_wgslsmith_index_u32(4294967295u, 11u)]), true, Struct_1(var_1.x, 4294967295u), 1u), u_input.b, global0[_wgslsmith_index_u32(12768u, 25u)], global3[_wgslsmith_index_u32(4663u, 11u)]) | 0i), 7145u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-925f, 1489f, true))), 198f))));
    var var_1 = func_2(firstTrailingBit(select(_wgslsmith_div_vec4_i32(max(vec4<i32>(-19696i, 0i, 2147483647i, arg_0.x), arg_0), vec4<i32>(2147483647i, arg_0.x, -2147483647i, arg_0.x)), _wgslsmith_sub_vec4_i32(arg_0 >> (vec4<u32>(u_input.d, u_input.b, arg_1.b, u_input.d) % vec4<u32>(32u)), arg_0 | arg_0), true == all(vec3<bool>(arg_1.a, arg_1.a, true)))));
    global2 = array<vec2<u32>, 2>();
    var_0 = 1048f;
    var_0 = -1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1131f, -815f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 2>();
    global2 = array<vec2<u32>, 2>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f) + _wgslsmith_f_op_f32(func_1(vec4<i32>(17746i, -20259i, -1i, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 23u)])))))));
    var_0 = true;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 50799u, u_input.b, global3[_wgslsmith_index_u32(12399u, 11u)]) & vec4<u32>(u_input.c, 7693u, global3[_wgslsmith_index_u32(u_input.d, 11u)], 0u), vec4<u32>(u_input.d, 2469u, u_input.c, 48998u) & vec4<u32>(1u, 72843u, global3[_wgslsmith_index_u32(21169u, 11u)], 12547u)), ~(~(~vec4<u32>(4863u, 0u, 1u, u_input.d)))) ^ _wgslsmith_clamp_u32(firstTrailingBit(firstLeadingBit(global3[_wgslsmith_index_u32(~37592u, 11u)])), 53347u ^ global3[_wgslsmith_index_u32(71736u, 11u)], _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(9197u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], u_input.d), vec4<u32>(0u, 29480u, u_input.d, 24177u)), ~global3[_wgslsmith_index_u32(min(40721u, 0u), 11u)])), 24u)];
    global3 = array<u32, 11>();
    var_0 = var_2.a.a;
    global3 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-10369i, 28319i, 1i), 1i), abs(-2147483647i)), -_wgslsmith_mult_i32(1i, max(0i, -2147483647i)), i32(-1i) * -abs(-15202i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1656f, -1479f, -1046f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-135f, -101f, -310f), vec3<f32>(1760f, 322f, 1653f)))))))), firstTrailingBit(max(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(43011u, global3[_wgslsmith_index_u32(var_2.c.b, 11u)])), u_input.c | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.b, 11u)], 11u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global3[_wgslsmith_index_u32(0u, 11u)]), global2[_wgslsmith_index_u32(var_2.d, 2u)])))), _wgslsmith_f_op_f32(func_1(vec4<i32>(_wgslsmith_add_i32(1i, ~(-1i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -1i, -7590i), vec3<i32>(12130i, 2986i, 1i) << (vec3<u32>(global3[_wgslsmith_index_u32(var_2.d, 11u)], u_input.c, 94441u) % vec3<u32>(32u))), _wgslsmith_mod_i32(select(23573i, 24147i, false), 1i), 2014i), var_2.a)));
}

