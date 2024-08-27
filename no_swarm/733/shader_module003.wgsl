struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-1i, -72406i), -558f, vec4<f32>(267f, -1918f, 896f, -795f), -24300i, 36357i);

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<i32>(21292i, 2147483647i), -1000f, vec4<f32>(-1427f, -372f, -1248f, 1047f), -70275i, 3844i), 6584i, vec2<bool>(true, true));

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<i32>(2147483647i, 0i), -804f, vec4<f32>(876f, -377f, 1246f, -289f), 1i, 11131i), -29675i, vec2<bool>(false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = arg_0.xxx;
    global3 = Struct_3(Struct_1(global2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a.b))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1934f), global4.a.b, _wgslsmith_div_f32(global4.a.b, global2.c.x), global3.a.b), _wgslsmith_mult_i32(global2.d, global3.b), -1i), firstLeadingBit(_wgslsmith_add_i32(1i, -1i)), select(vec2<bool>(true & all(arg_0), any(select(arg_0.wzx, arg_0.wyz, arg_0.x))), global4.c, ~(~global1.x) < _wgslsmith_add_u32(~global1.x, 92889u)));
    var var_1 = select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global4.a.e, firstTrailingBit(-u_input.a), global4.b), vec4<i32>(~(-1i), -20842i, -101i, abs(global3.b)) << (~vec4<u32>(0u, 0u, 42195u, 31686u) % vec4<u32>(32u))), ~select(firstTrailingBit(select(vec4<i32>(1i, u_input.a, global2.a.x, -13521i), vec4<i32>(global3.b, 8058i, global2.a.x, 0i), false)), _wgslsmith_add_vec4_i32(-vec4<i32>(global2.d, -26192i, u_input.b.x, -32440i), -vec4<i32>(u_input.b.x, global2.e, 1i, -16692i)), select(arg_0, !arg_0, global4.c.x)), vec4<bool>(1u != global1.x, arg_0.x, true, select(true, all(vec4<bool>(false, global3.c.x, false, arg_0.x)), true)));
    global3 = Struct_3(global3.a, -1i, global4.c);
    global2 = global3.a;
    return ~vec2<u32>(~(~min(4294967295u, global1.x)), global1.x);
}

fn func_2() -> Struct_2 {
    global3 = Struct_3(Struct_1(max(global4.a.a, ~select(vec2<i32>(global4.a.a.x, global2.a.x), vec2<i32>(u_input.a, 1i), global4.c.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(964f, 975f), global2.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-836f, 1102f, global3.a.c.x, 828f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1863f, global3.a.b, global4.a.c.x, global2.c.x) - vec4<f32>(-551f, -1838f, -1853f, -249f)))), i32(-1i) * -global4.a.a.x, firstLeadingBit(~(-28713i))), firstLeadingBit(global2.e), !global4.c);
    global1 = ~(~abs(func_3(!vec4<bool>(global4.c.x, false, false, global3.c.x))));
    var var_0 = Struct_2(min(33214i, _wgslsmith_add_i32(select(_wgslsmith_dot_vec2_i32(global3.a.a, global4.a.a), global2.d, true), 37582i)), Struct_1(vec2<i32>(-49319i, -19807i), 599f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.b, 355f, 544f, -1002f) + global4.a.c)))), global4.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, -79168i, u_input.b.x), countOneBits(vec4<i32>(global3.b, 0i, 23312i, 1i)))));
    let var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(~(-vec4<i32>(global2.e, 45099i, 2147483647i, var_0.b.e)), vec4<i32>(_wgslsmith_div_i32(global3.b, u_input.b.x), -2147483647i, 1i, global3.a.e ^ global3.a.e)), ~select(vec4<i32>(_wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(var_0.a, u_input.b.x)), global4.a.e, -42823i, 2147483647i), ~(vec4<i32>(155i, 20756i, global3.a.d, -66528i) >> (vec4<u32>(global1.x, 1u, 4294967295u, global1.x) % vec4<u32>(32u))), firstLeadingBit(1u) >= global1.x));
    var var_2 = vec3<i32>(-39666i, select(0i >> (global1.x % 32u), abs(global4.b), any(vec4<bool>(false, all(vec3<bool>(true, global4.c.x, true)), !global3.c.x, any(vec3<bool>(true, global0[_wgslsmith_index_u32(13153u, 24u)], true))))), -2147483647i);
    return Struct_2(var_2.x, global4.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = all(select(global4.c, vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 24u)], false), any(vec4<bool>(true, true, true, true))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.b, 224f, -167f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, global3.a.c.x, 1090f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1828f, -167f, arg_2.x) * global3.a.c.yzx)) * vec3<f32>(global2.b, 317f, func_2().b.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(643f, 1000f, global4.a.b) * vec3<f32>(global4.a.b, global2.c.x, -555f)), vec3<f32>(-967f, 311f, 587f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(var_0, false, true)))))));
    let var_3 = ~(vec4<i32>(u_input.b.x ^ 2147483647i, 2147483647i, ~_wgslsmith_sub_i32(global3.a.e, arg_1.x), -16850i) & _wgslsmith_add_vec4_i32(select(vec4<i32>(global4.b, global3.a.d, 25706i, global3.a.a.x), arg_1, global0[_wgslsmith_index_u32(arg_0.x, 24u)]) ^ -arg_1, arg_1));
    var var_4 = ~select(vec3<i32>(-(~var_1.b.e), ~func_2().a, global2.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_3.yxz, -vec3<i32>(10776i, -1120i, -12710i), vec3<i32>(global3.a.e, 1i, 13845i)), vec3<i32>(_wgslsmith_sub_i32(arg_1.x, 1i), ~(-2147483647i), global3.a.e)), !(!select(vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, true), false)));
    return Struct_3(Struct_1(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(13290i, 1i)) | vec2<i32>(_wgslsmith_add_i32(var_3.x, 0i), arg_1.x), -642f, _wgslsmith_f_op_vec4_f32(exp2(func_2().b.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 23088i, var_4.x, arg_1.x) << (vec4<u32>(arg_0.x, 14748u, 76440u, 4294967295u) % vec4<u32>(32u)), ~(vec4<i32>(global3.a.d, 1i, 2147483647i, u_input.a) ^ vec4<i32>(var_1.a, var_4.x, -2147483647i, global3.b))), ~var_3.x), ~(-_wgslsmith_mod_i32(var_3.x, ~35929i)), select(!vec2<bool>(true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(122953u, 24u)], global4.c.x, global4.c.x))), select(!(!global3.c), select(vec2<bool>(true, true), global4.c, false), select(!global3.c, vec2<bool>(true, true), global3.c.x)), false));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(65439i, func_1(countOneBits(vec4<u32>(23828u, min(global1.x, global1.x), select(global1.x, global1.x, true), _wgslsmith_add_u32(1u, 57303u))), -(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 47393i, global2.d, 0i)), _wgslsmith_f_op_vec4_f32(-func_1(vec4<u32>(12049u, global1.x, global1.x, global1.x) >> (vec4<u32>(52064u, global1.x, 1u, global1.x) % vec4<u32>(32u)), vec4<i32>(global3.a.d, -9166i, 2147483647i, -56897i), global3.a.c).a.c)).a);
    var var_1 = arg_0;
    let var_2 = func_1(~(~(~(~vec4<u32>(global1.x, global1.x, 34663u, global1.x)))), select((min(vec4<i32>(0i, var_0.b.e, arg_0.a.d, 1i), vec4<i32>(u_input.b.x, -32899i, global4.b, 11484i)) & _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, -67i, var_0.b.a.x, 79687i), vec4<i32>(arg_0.b, arg_0.a.d, 0i, 2147483647i))) >> (vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 49799u, 0u, global1.x), vec4<u32>(global1.x, 3677u, global1.x, 0u)), 1u, 24615u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(firstLeadingBit(var_1.b), _wgslsmith_clamp_i32(1i, global4.a.a.x, 5776i), func_2().a, ~(-2147483647i))), false), _wgslsmith_f_op_vec4_f32(-global3.a.c)).a;
    let var_3 = global1.x;
    var var_4 = (~countOneBits(max(vec4<i32>(-51510i, -16775i, 1i, var_0.b.a.x), vec4<i32>(-21055i, var_0.b.d, -14428i, global4.b))) | ~firstTrailingBit(countOneBits(vec4<i32>(var_1.a.e, u_input.b.x, u_input.a, 2147483647i)))) | select(-(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.d, var_0.b.d, -2147483647i, arg_0.b), vec4<i32>(var_1.a.d, u_input.a, 43435i, var_2.e))), vec4<i32>(global3.b | arg_0.b, ~(~(-85097i)), var_0.b.d, -arg_0.b), !(!select(vec4<bool>(global3.c.x, true, true, false), vec4<bool>(true, var_1.c.x, false, global3.c.x), vec4<bool>(false, true, false, false))));
    return _wgslsmith_mod_u32(~reverseBits(global1.x), 16564u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec2<u32>(func_4(func_1(~vec4<u32>(12129u, 7790u, global1.x, 3948u), select(vec4<i32>(global4.a.e, -22229i, 19109i, 1i), vec4<i32>(2147483647i, global4.a.d, 5822i, 3809i), true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1640f, -2787f, 1425f, 247f))))), global1.x);
    var var_0 = global3.b;
    var var_1 = select(select(select(vec4<bool>(global4.c.x, select(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(0u, 24u)]), true, !global0[_wgslsmith_index_u32(0u, 24u)]), select(vec4<bool>(false, false, true, global4.c.x), vec4<bool>(false, global4.c.x, true, false), !vec4<bool>(global4.c.x, false, global4.c.x, false)), true), select(!select(vec4<bool>(false, global3.c.x, global4.c.x, global4.c.x), vec4<bool>(global4.c.x, global4.c.x, global3.c.x, global4.c.x), false), select(vec4<bool>(global4.c.x, false, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, global0[_wgslsmith_index_u32(7700u, 24u)], false, false), any(vec3<bool>(false, true, global4.c.x))), vec4<bool>(true, all(vec3<bool>(false, global3.c.x, global0[_wgslsmith_index_u32(4294967295u, 24u)])), true, global3.c.x)), func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4294967295u, 12512u, global1.x) << (vec4<u32>(60355u, global1.x, 0u, global1.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), vec4<u32>(1u, global1.x, 22692u, 6332u), vec4<u32>(50374u, 1u, 0u, global1.x))), min(~vec4<i32>(u_input.a, 5139i, global3.b, global3.b), vec4<i32>(29911i, global3.b, -2147483647i, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a.c))).c.x), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(1208u, 24u)], global4.c.x, true), select(select(vec4<bool>(true, true, global3.c.x, true), vec4<bool>(global3.c.x, false, global4.c.x, global0[_wgslsmith_index_u32(global1.x, 24u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(global1.x, 24u)])), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false, global3.c.x, false), !vec4<bool>(false, global4.c.x, global3.c.x, false)), !vec4<bool>(global3.c.x, false, true, false)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 24u)], global4.c.x, true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(17241u, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)], global3.c.x, global3.c.x), vec4<bool>(global3.c.x, true, false, true), vec4<bool>(true, global4.c.x, false, global3.c.x)), select(vec4<bool>(global4.c.x, global3.c.x, false, global0[_wgslsmith_index_u32(global1.x, 24u)]), vec4<bool>(false, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], global3.c.x, true, global0[_wgslsmith_index_u32(0u, 24u)])), !vec4<bool>(true, true, global4.c.x, global4.c.x)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], global3.c.x, true, global3.c.x), vec4<bool>(global3.c.x, true, false, global4.c.x), vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 24u)], global4.c.x, global3.c.x)), vec4<bool>(true, false, true, false), true)), !(!all(vec2<bool>(global3.c.x, false)))), select(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 24u)], global4.c.x, false))), select(vec4<bool>(true, all(global4.c), global3.c.x, true), vec4<bool>(global4.c.x & global3.c.x, true, any(vec3<bool>(false, true, false)), -216f >= global4.a.b), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 24u)]), global0[_wgslsmith_index_u32(max(~global1.x, ~global1.x), 24u)]));
    var var_2 = 44556u;
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x ^ global1.x, ~11512u, 0u, 30332u), ~vec4<u32>(32331u, global1.x, global1.x, 0u) << (~vec4<u32>(1u, global1.x, 10352u, global1.x) % vec4<u32>(32u))), ~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global4.a.d, global3.a.a.x, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 25704i), vec4<i32>(-9937i, global4.a.a.x, global4.b, 0i)), ~vec4<i32>(40006i, global4.b, -1i, global3.b)), _wgslsmith_f_op_vec4_f32(select(func_1(vec4<u32>(39791u, 1u, global1.x, 53590u), vec4<i32>(0i, global2.e, global4.b, 0i), vec4<f32>(global4.a.b, -1029f, 616f, global4.a.c.x)).a.c, _wgslsmith_f_op_vec4_f32(global2.c * _wgslsmith_f_op_vec4_f32(-global4.a.c)), false))).a.a, -u_input.b, 2147483647i, vec3<i32>(~func_1(vec4<u32>(0u, 51461u, 1u, global1.x), vec4<i32>(-2147483647i, global2.e, global2.d, global2.a.x), global4.a.c).a.a.x, -1i, _wgslsmith_sub_i32(global4.a.a.x, -2147483647i) ^ global3.b) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 70037u, global1.x), ~vec3<u32>(global1.x, 1u, global1.x) & vec3<u32>(global1.x, global1.x, global1.x)) % vec3<u32>(32u)));
}

