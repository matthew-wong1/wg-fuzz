struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true));

var<private> global1: array<bool, 2>;

var<private> global2: array<u32, 18>;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_3, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(-_wgslsmith_clamp_i32(u_input.b, 0i, u_input.b), -u_input.b), max(vec2<i32>(-22527i, _wgslsmith_add_i32(-2147483647i, -1i)) ^ vec2<i32>(u_input.b, ~(-4558i)), -select(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(9586i, u_input.b), global3.xy)));
    var_0 = countOneBits(-vec2<i32>(i32(-1i) * -1i, var_0.x));
    global3 = !select(select(select(!vec3<bool>(false, global3.x, true), select(vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(30652u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global3.x)), !vec3<bool>(global3.x, false, global3.x)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], true, true), all(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(19366u, 2u)], false, true), any(global0[_wgslsmith_index_u32(1155u, 10u)])), !(!vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 2u)], global3.x, global3.x)), true), false);
    var var_1 = vec3<u32>(~1u, _wgslsmith_div_u32(~u_input.c, u_input.c), u_input.a.x);
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(-var_0.x ^ ~var_0.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-45568i, 21512i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 14198i), vec2<i32>(u_input.b, 0i)))), 0i) << (~_wgslsmith_mult_vec2_u32(~var_1.yy, ~reverseBits(vec2<u32>(0u, global2[_wgslsmith_index_u32(0u, 18u)]))) % vec2<u32>(32u));
    return 4294967295u;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(~vec4<u32>(1u, 4294967295u, 30419u >> (1u % 32u), ~1u) & (vec4<u32>(~10225u, func_3(), global2[_wgslsmith_index_u32(u_input.a.x, 18u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u) << (vec4<u32>(~u_input.a.x, ~1u, 1u, u_input.a.x) % vec4<u32>(32u))), Struct_2(Struct_1(firstTrailingBit(select(u_input.b, 15065i, true)), ~1i, ~u_input.b), 230f < arg_0.x, Struct_1(_wgslsmith_sub_i32(-2147483647i, select(u_input.b, arg_2.a.b, true)), -2147483647i, 16317i), ~abs(arg_2.d)));
    global1 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, -757f, 361f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_0.yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, -653f, 940f) * arg_0.zwy))))));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(var_0.a.x, 18u)]), 2u)];
    let var_3 = Struct_2(var_0.b.a, arg_2.b, Struct_1(_wgslsmith_add_i32(u_input.b, _wgslsmith_clamp_i32(36166i, -arg_2.d.x, -2147483647i)), _wgslsmith_mod_i32(-var_0.b.c.c, _wgslsmith_div_i32(1i, 0i ^ arg_2.d.x)), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(u_input.b | -22206i, -2147483647i))), vec4<i32>(_wgslsmith_clamp_i32(~u_input.b, ~48194i, 1i ^ u_input.b) | select(-var_0.b.c.b, ~arg_2.c.a, !global3.x), ~_wgslsmith_div_i32(var_0.b.d.x, -26217i), u_input.b, -(~(-41945i))));
    return arg_2.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, _wgslsmith_f_op_f32(sign(-924f)), 1007f, 1823f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(606f, -429f, -235f, 198f), vec4<f32>(856f, -1996f, -1229f, -490f))), vec4<f32>(344f, 705f, -1086f, -252f), global1[_wgslsmith_index_u32(u_input.c, 2u)] && arg_0.b)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1285f, -687f, -462f, -783f), vec4<f32>(-259f, -2077f, -329f, -449f), all(global0[_wgslsmith_index_u32(u_input.c, 10u)]))))), 2242f, arg_0);
    var_0 = Struct_1(_wgslsmith_mod_i32(u_input.b, var_0.b), _wgslsmith_dot_vec2_i32(arg_0.d.wy, ~vec2<i32>(u_input.b ^ -43308i, ~11329i)), u_input.b);
    let var_1 = ~4294967295u;
    var var_2 = global3.yy;
    global2 = array<u32, 18>();
    return _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32((~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13348u, 18u)], 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)]) & ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(26074u, 18u)], 18u)]) >> (25848u % 32u), 18u)], 18u)], 63852u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -1000f, (countOneBits(vec4<i32>(28430i, 0i, 30042i, 4885i) & vec4<i32>(0i, 64766i, -1i, u_input.b)) | ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (select(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(36420u, 29111u, global2[_wgslsmith_index_u32(u_input.c, 18u)], u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(39140u, 18u)], 438u, global2[_wgslsmith_index_u32(70489u, 18u)], u_input.a.x), vec4<u32>(23910u, u_input.c, 1u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18375u, 18u)], 18u)], 18u)], 4294967295u) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 0u, 3712u)), vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44460u, 18u)], 18u)], func_1(Struct_2(Struct_1(-2147483647i, 0i, -15821i), true, Struct_1(-2147483647i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 7580i, u_input.b, u_input.b)), u_input.c, vec2<i32>(u_input.b, u_input.b)), 73281u, global2[_wgslsmith_index_u32(0u, 18u)] << (u_input.a.x % 32u)), select(true, !global3.x, true)) % vec4<u32>(32u)));
}

