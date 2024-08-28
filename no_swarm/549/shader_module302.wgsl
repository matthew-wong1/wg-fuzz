struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 26> = array<u32, 26>(1u, 52140u, 1u, 38923u, 1u, 0u, 32903u, 74118u, 90718u, 4294967295u, 0u, 4294967295u, 70139u, 0u, 4294967295u, 35075u, 11545u, 1u, 0u, 0u, 48630u, 68712u, 1u, 59945u, 5890u, 33078u);

var<private> global2: vec2<f32>;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_1(max(vec3<u32>(_wgslsmith_sub_u32(select(8398u, global0.a.x, global0.d.x), _wgslsmith_sub_u32(52127u, 1u)), ~max(global0.a.x, global0.a.x), 30566u), ~abs(global0.a)), vec3<i32>(29751i, global3.x, -17336i), u_input.b.x, !arg_0.xzz);
    global1 = array<u32, 26>();
    return vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.x, global0.a.x, 855u, global0.a.x), max(max(vec4<u32>(0u, global0.a.x, 28671u, global0.a.x), u_input.e), ~vec4<u32>(6004u, var_0.a.x, var_0.a.x, global0.a.x))), ~var_0.a.x, global1[_wgslsmith_index_u32(~6356u, 26u)]) | vec3<u32>(abs(abs(global1[_wgslsmith_index_u32(1u << (u_input.e.x % 32u), 26u)])), ~_wgslsmith_mult_u32(1u, abs(u_input.a)), global0.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    global2 = vec2<f32>(-1813f, arg_3.b.x);
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.x, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.e.yz, u_input.e.zy)), ~(9082u | arg_1.a.x)), firstTrailingBit(select(arg_3.c.a, abs(vec3<u32>(arg_3.a.a.x, 4294967295u, 4294967295u)), true)), ~arg_3.d), -_wgslsmith_sub_vec3_i32(u_input.b, (vec3<i32>(arg_0, arg_0, arg_1.c) >> (u_input.e.zxy % vec3<u32>(32u))) >> (global0.a % vec3<u32>(32u))), -2147483647i, global0.d);
    var var_1 = vec3<i32>(arg_1.c, 1i, i32(-1i) * -3362i);
    let var_2 = !any(select(vec2<bool>(true, arg_1.d.x), select(select(vec2<bool>(false, var_0.d.x), var_0.d.yy, vec2<bool>(false, arg_3.c.d.x)), select(arg_3.c.d.zy, global0.d.zx, global0.d.x), vec2<bool>(var_0.d.x, false)), var_0.d.x));
    let var_3 = vec3<bool>(!((_wgslsmith_f_op_f32(ceil(arg_3.b.x)) >= arg_3.b.x) | (true & var_0.d.x)), all(!vec2<bool>(var_0.d.x, false)), !all(select(vec3<bool>(false, false, false), select(vec3<bool>(arg_1.d.x, false, var_0.d.x), arg_1.d, var_0.d.x), select(vec3<bool>(true, arg_1.d.x, true), vec3<bool>(false, true, global0.d.x), arg_3.c.d.x))));
    return 1234f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(-2147483647i, Struct_1(func_3(!vec4<bool>(global0.d.x, global0.d.x, true, false)), vec3<i32>(1i, -(~global0.b.x), firstTrailingBit(global3.x ^ -1i)), reverseBits(global3.x), !vec3<bool>(false, all(vec4<bool>(global0.d.x, true, true, global0.d.x)), true)), global0.a.x, Struct_2(Struct_1(global0.a >> (vec3<u32>(0u, 4529u, global1[_wgslsmith_index_u32(u_input.d, 26u)]) % vec3<u32>(32u)), -(u_input.b & vec3<i32>(u_input.b.x, 4365i, global0.b.x)), reverseBits(max(-22875i, 5486i)), select(vec3<bool>(true, global0.d.x, global0.d.x), global0.d, !global0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -482f, -647f)), vec3<f32>(-447f, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1155f, global2.x) - vec3<f32>(global2.x, 692f, global2.x)))), Struct_1(u_input.e.yxx, -vec3<i32>(35297i, 25346i, u_input.b.x) | max(vec3<i32>(u_input.b.x, global0.b.x, -698i), u_input.b), _wgslsmith_dot_vec2_i32(u_input.b.xz, global0.b.xy) | global0.b.x, select(select(vec3<bool>(true, global0.d.x, true), vec3<bool>(true, global0.d.x, false), true), global0.d, global0.d)), u_input.c)));
    let var_1 = -31153i;
    var var_2 = !(true | any(!vec3<bool>(global0.d.x, global0.d.x, true)));
    var var_3 = ~countOneBits(countOneBits(vec2<u32>(44927u, min(global1[_wgslsmith_index_u32(u_input.d, 26u)], 62243u))));
    var_2 = false;
    return Struct_2(Struct_1(~u_input.e.yww, global0.b, 24029i, select(vec3<bool>(global2.x != var_0, false, true), select(!global0.d, select(global0.d, global0.d, global0.d), global0.d.x), !vec3<bool>(false, global0.d.x, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, _wgslsmith_f_op_f32(ceil(161f)), _wgslsmith_f_op_f32(global2.x + global2.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(global2.x + -479f)), vec3<f32>(_wgslsmith_f_op_f32(abs(1022f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_0)), any(select(vec2<bool>(global0.d.x, false), global0.d.xy, true)))), !(_wgslsmith_f_op_f32(614f * 587f) >= var_0))), Struct_1(~vec3<u32>(u_input.d, ~global1[_wgslsmith_index_u32(u_input.d, 26u)], ~0u), _wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), ~(~vec3<i32>(1i, -52915i, global3.x))), -2147483647i, vec3<bool>(true, !global0.d.x, !(global0.d.x | global0.d.x))), reverseBits(vec3<u32>(firstTrailingBit(49966u), 6298u, countOneBits(min(global0.a.x, 4294967295u)))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_2.b.x;
    let var_1 = -(~(~u_input.b.x) & (-2147483647i >> (~_wgslsmith_add_u32(arg_0, global0.a.x) % 32u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    var var_2 = func_2();
    var var_3 = func_2().a;
    return var_2.c;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = vec2<u32>(global0.a.x, 1u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global2.x) * _wgslsmith_div_f32(func_2().b.x, _wgslsmith_div_f32(global2.x, 693f))), global2.x));
    global1 = array<u32, 26>();
    let var_3 = select(vec4<bool>(all(select(select(vec4<bool>(global0.d.x, false, true, arg_0.d.x), vec4<bool>(false, arg_0.d.x, arg_0.d.x, true), false), vec4<bool>(global0.d.x, false, global0.d.x, false), vec4<bool>(true, true, false, false))), false, true, false), vec4<bool>(!any(select(vec3<bool>(global0.d.x, true, global0.d.x), arg_0.d, true)), func_2().a.d.x, false, true), true);
    return Struct_1(func_2().a.a, global3.zyw, arg_0.b.x, arg_0.d);
}

fn func_1() -> vec3<u32> {
    global0 = func_6(func_5(4294967295u, any(vec4<bool>(global0.d.x == false, !global0.d.x, true, select(false, true, true))), func_2(), ~(~(~vec2<i32>(u_input.b.x, 1i)))));
    let var_0 = min(global0.b.xx, vec2<i32>(i32(-1i) * -54192i, i32(-1i) * -1i));
    var var_1 = func_2();
    let var_2 = var_1.c.a;
    var var_3 = Struct_1(firstLeadingBit(vec3<u32>(5008u, 0u, _wgslsmith_mult_u32(35637u, var_1.c.a.x))), -vec3<i32>(-2147483647i, -2389i | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.b.x, -2147483647i, u_input.b.x), vec4<i32>(0i, u_input.b.x, 0i, var_0.x)), firstLeadingBit(var_0.x)), var_1.c.b.x, vec3<bool>(true, true, true == all(vec3<bool>(false, false, var_1.c.d.x))));
    return min(vec3<u32>(var_1.a.a.x, var_1.c.a.x, var_3.a.x), vec3<u32>(81929u, ~global1[_wgslsmith_index_u32(60578u, 26u)], _wgslsmith_sub_u32(func_3(vec4<bool>(false, var_3.d.x, global0.d.x, global0.d.x)).x, func_2().c.a.x)));
}

fn func_7(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    global1 = array<u32, 26>();
    let var_0 = false;
    global0 = func_2().c;
    let var_1 = func_2();
    let var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-var_1.b.x));
}

fn func_8(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = false;
    let var_1 = !vec3<bool>(true, true, any(!global0.d.zz));
    global1 = array<u32, 26>();
    var var_2 = func_2();
    var var_3 = var_1.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(false, func_1())) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-157f))))));
    let var_1 = -1i;
    let var_2 = -818f;
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.xy));
    global1 = array<u32, 26>();
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

