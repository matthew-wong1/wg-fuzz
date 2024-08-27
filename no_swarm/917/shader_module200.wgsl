struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 31> = array<i32, 31>(6379i, i32(-2147483648), 7658i, 15904i, 0i, -1i, 14187i, 0i, -1i, 12044i, 10929i, 15439i, 31154i, 18684i, i32(-2147483648), 30426i, 1i, 1i, 20861i, -18426i, -30548i, 2147483647i, -14512i, -1i, -1i, 12645i, 1i, 2718i, 0i, 0i, 0i);

var<private> global2: array<f32, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global2 = array<f32, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]))) * vec2<f32>(-805f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0.x, 18u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], -469f), vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], 338f))))))), !(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, global0.x), 18u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global0.x, 18u)]), _wgslsmith_f_op_f32(f32(-1f) * -1167f)))), vec4<u32>(~13940u, 1u, _wgslsmith_div_u32(global0.x, select(global0.x, global0.x, false)) >> (global0.x % 32u), ~(~(~global0.x))));
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    return vec4<i32>(countOneBits(-22566i), u_input.a.x, min(-36444i, reverseBits(global1[_wgslsmith_index_u32(select(firstLeadingBit(21473u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, global0.x), vec2<u32>(34317u, 0u)), var_0.b), 31u)])), _wgslsmith_div_i32(u_input.b, i32(-1i) * -u_input.a.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = false;
    global1 = array<i32, 31>();
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~26152u, countOneBits(0u)), global0.x);
    var var_2 = Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, ~global1[_wgslsmith_index_u32(26076u, 31u)]), u_input.a), ~((_wgslsmith_clamp_vec4_i32(vec4<i32>(-12956i, u_input.b, -6090i, 2147483647i), vec4<i32>(0i, 1i, 44296i, u_input.b), vec4<i32>(u_input.a.x, 32719i, global1[_wgslsmith_index_u32(27117u, 31u)], 35767i)) | (vec4<i32>(14408i, -37417i, u_input.b, 0i) >> (vec4<u32>(global0.x, global0.x, global0.x, 42528u) % vec4<u32>(32u)))) & firstTrailingBit(func_3())), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(31240u & global0.x), 18u)])));
    var var_3 = vec4<i32>(-1i) * -reverseBits(~var_2.b);
    return !(!(!select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, false), vec3<bool>(true, false, var_0)))));
}

fn func_1() -> vec2<bool> {
    global1 = array<i32, 31>();
    let var_0 = func_2();
    global0 = ~vec2<u32>(~(reverseBits(global0.x) << (global0.x % 32u)), max(global0.x, ~global0.x));
    var var_1 = vec3<bool>(false, false | (var_0.x || (!var_0.x || !var_0.x)), all(var_0.yz));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global0.x, global0.x, 2719u) << (vec3<u32>(global0.x, 1897u, 34941u) % vec3<u32>(32u))), vec3<u32>(4294967295u, global0.x, global0.x) >> (~vec3<u32>(20529u, 59429u, global0.x) % vec3<u32>(32u))), global0.x >> (29873u % 32u), firstTrailingBit(~reverseBits(global0.x)), 0u) << (_wgslsmith_add_vec4_u32(vec4<u32>(39572u, global0.x, _wgslsmith_add_u32(max(global0.x, 121226u), ~global0.x), 1u), min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 53010u, global0.x, global0.x) >> (vec4<u32>(global0.x, global0.x, 17476u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(51836u, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 61324u, 61419u, 13031u), ~vec4<u32>(global0.x, global0.x, 4294967295u, 1u)))) % vec4<u32>(32u));
    return vec2<bool>(true, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.x, 1u), 1u), ~_wgslsmith_clamp_u32(53250u, arg_1, 1u)), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.x, 18u)] + global2[_wgslsmith_index_u32(arg_2.x, 18u)]))))), all(vec4<bool>(~0i <= _wgslsmith_clamp_i32(u_input.b, u_input.b, 0i), false, global2[_wgslsmith_index_u32(~1u, 18u)] != 847f, any(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, false), arg_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, global2[_wgslsmith_index_u32(~48466u, 18u)], -610f)), ~(~((arg_2 ^ arg_2) | (vec4<u32>(arg_1, 4294967295u, global0.x, 4294967295u) | vec4<u32>(arg_2.x, arg_1, 99178u, arg_2.x)))));
    global0 = ~firstLeadingBit(~max(arg_2.ww | vec2<u32>(arg_2.x, arg_2.x), ~vec2<u32>(var_0.d.x, 1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.c)));
    var var_2 = vec3<u32>(global0.x, firstTrailingBit(arg_2.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(_wgslsmith_mod_u32(var_0.d.x, arg_1), _wgslsmith_mult_u32(global0.x, 5311u), arg_2.x), arg_2.yxx ^ firstTrailingBit(vec3<u32>(0u, arg_2.x, 44446u))), var_0.d.wyx));
    global1 = array<i32, 31>();
    return vec2<u32>(~4294967295u, _wgslsmith_add_u32(var_0.d.x, _wgslsmith_mod_u32(20060u ^ _wgslsmith_sub_u32(global0.x, arg_1), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_4(!func_1(), ~global0.x, _wgslsmith_sub_vec4_u32((vec4<u32>(27470u, global0.x, global0.x, 7816u) ^ vec4<u32>(global0.x, global0.x, 25485u, 12024u)) & vec4<u32>(12427u, global0.x, 55042u, global0.x), ~(~vec4<u32>(0u, 37778u, 4294967295u, 79328u)))), _wgslsmith_div_vec2_u32(vec2<u32>(~(~global0.x), 1u << (_wgslsmith_add_u32(global0.x, global0.x) % 32u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(25577u, 0u), select(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, global0.x), true), ~vec2<u32>(global0.x, 5274u))), !func_2().zy);
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(min(firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, 1u)), vec4<u32>(1u, global0.x, global0.x, 1u)), ~select(vec4<u32>(global0.x, 28590u, global0.x, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, global0.x), true)), global0.x), _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(global0.x, 0u))), _wgslsmith_sub_vec2_u32(~select(vec2<u32>(global0.x, global0.x), vec2<u32>(0u, 24718u), true), vec2<u32>(reverseBits(global0.x), _wgslsmith_mult_u32(global0.x, 4294967295u)))));
    var var_0 = Struct_3(firstLeadingBit(~min(vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 31u)], global1[_wgslsmith_index_u32(global0.x, 31u)]), vec2<i32>(2147483647i, -33446i))) << (((_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(169714u, global0.x)) | vec2<u32>(1u, 1u)) << (vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, 42503u), 35555u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(firstLeadingBit(u_input.a.x), ~(u_input.b | countOneBits(-2147483647i)), ~max(global1[_wgslsmith_index_u32(96942u, 31u)], -54727i) >> (1u % 32u), global1[_wgslsmith_index_u32(global0.x, 31u)] << (~global0.x % 32u)), ~(~0u), 2153f);
    global0 = countOneBits(abs(vec2<u32>(~(global0.x >> (1u % 32u)), _wgslsmith_div_u32(var_0.c, 0u))));
    var var_1 = global0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~(~(~var_0.c)), 18u)], global2[_wgslsmith_index_u32(~4294967295u, 18u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1027f, var_0.d, -386f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(42067u, 0u), 18u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(27739u, 18u)], 1502f, 1185f, 1195f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, global2[_wgslsmith_index_u32(42583u, 18u)], -668f, -289f))))));
    var var_3 = ~_wgslsmith_dot_vec3_i32(~var_0.b.wyx, abs(vec3<i32>(-1i, 1862i, 1i) & var_0.b.zzy) & vec3<i32>(i32(-1i) * -1i, abs(global1[_wgslsmith_index_u32(global0.x, 31u)]), var_0.a.x));
    var var_4 = 54295u >> (func_4(vec2<bool>(true, false), global0.x, ~(~vec4<u32>(var_0.c, 54769u, 0u, 0u)) ^ ~vec4<u32>(global0.x, 1u, var_0.c, 4294967295u)).x % 32u);
    let var_5 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~func_4(vec2<bool>(false, true), var_0.c, vec4<u32>(1u, global0.x, 1u, 10775u)).x, 0u), ~(~(~0u)), 4294967295u | global0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, _wgslsmith_mod_u32(var_0.c, 18787u), min(global0.x, var_0.c), global0.x ^ var_0.c), ~(~vec4<u32>(var_0.c, global0.x, 0u, 1u))), global0.x, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_0.a ^ firstTrailingBit(vec2<i32>(1i, 38697i)), min(func_3().xw, u_input.a)) << (firstTrailingBit(~vec2<u32>(9648u, global0.x)) % vec2<u32>(32u)));
}

