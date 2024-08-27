struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_2(vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_2(vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_2(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_2(vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_2(vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_2(vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_2(vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_2(vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_2(vec2<bool>(true, true), vec3<bool>(false, false, true)));

var<private> global2: array<i32, 11> = array<i32, 11>(0i, 25057i, 2147483647i, 1i, 15058i, 44894i, 28605i, i32(-2147483648), 0i, -18i, 0i);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(35012u, 11334u, 0u), -1000f, -206f, -30546i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    global0 = 14219i;
    let var_1 = u_input.a;
    global0 = u_input.c.x;
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)];
    return Struct_3(global1[_wgslsmith_index_u32(~0u, 10u)]);
}

fn func_3(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(false & (select(global3.a.x, 18863u, false) < u_input.a), false, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)) | true, all(func_1().a.b.yx)), all(vec3<bool>(true, true, true)));
    global2 = array<i32, 11>();
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.a.x, 71472u, global3.a.x), global3.a)), ~countOneBits(arg_0.xww), var_0.zyw), countOneBits(arg_0.xxw) << (~(vec3<u32>(4294967295u, 13616u, global3.a.x) << (vec3<u32>(global3.a.x, 78608u, 20561u) % vec3<u32>(32u))) % vec3<u32>(32u))), countOneBits(global3.a >> (~_wgslsmith_mult_vec3_u32(arg_0.zxx, vec3<u32>(0u, 1u, 0u)) % vec3<u32>(32u))));
    global2 = array<i32, 11>();
    var var_2 = u_input.b.x;
    return Struct_3(global1[_wgslsmith_index_u32(~(~(_wgslsmith_clamp_u32(1u, var_1.x, 0u) | ~4294967295u)), 10u)]);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = select(select(select(select(select(vec4<bool>(false, false, false, arg_3.a.x), vec4<bool>(false, arg_0.a.a.x, false, false), vec4<bool>(true, arg_3.b.x, false, false)), vec4<bool>(arg_3.b.x, arg_3.b.x, arg_0.a.a.x, false), vec4<bool>(arg_3.b.x, arg_3.b.x, arg_0.a.a.x, false)), vec4<bool>(true, -2080i > global2[_wgslsmith_index_u32(68152u, 11u)], true, true), select(vec4<bool>(arg_3.b.x, arg_3.a.x, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_3.b.x, false, true), true)), !select(select(vec4<bool>(arg_3.b.x, arg_0.a.a.x, arg_0.a.b.x, false), vec4<bool>(arg_3.a.x, false, arg_3.b.x, true), false), !vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.a.x), false), all(vec2<bool>(arg_3.b.x, func_1().a.b.x))), !(!vec4<bool>(u_input.b.x <= -1i, true, true, false | arg_3.b.x)), !(!vec4<bool>(false, true, false & arg_0.a.b.x, arg_0.a.a.x)));
    let var_1 = func_3(vec4<u32>(global3.a.x, abs(0u << (firstTrailingBit(u_input.a) % 32u)), _wgslsmith_dot_vec2_u32(global3.a.xz, ~vec2<u32>(u_input.a, 11889u)) & (~60037u & arg_1), 4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c - global3.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global3.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global3.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(627f, 473f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-756f, -180f)))));
    global2 = array<i32, 11>();
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(global3.a.x, u_input.a), 1u);
    return any(select(vec4<bool>(u_input.a >= 42283u, false, arg_3.b.x, true), vec4<bool>(!arg_3.b.x, 506f >= _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(sign(global3.c)) != -1702f, true), select(vec4<bool>(var_0.x, !var_0.x, true, !var_0.x), select(vec4<bool>(true, arg_0.a.a.x, true, arg_0.a.a.x), select(vec4<bool>(false, var_1.a.a.x, var_0.x, false), vec4<bool>(true, var_1.a.a.x, var_0.x, var_1.a.b.x), vec4<bool>(true, var_0.x, true, false)), !vec4<bool>(true, true, false, arg_0.a.b.x)), var_0.x)));
}

fn func_2() -> StorageBuffer {
    var var_0 = -(i32(-1i) * -26849i) << (global3.a.x % 32u);
    let var_1 = Struct_4(func_4(func_3(~(~vec4<u32>(u_input.a, global3.a.x, 2275u, 4294967295u))), ~(~8359u), _wgslsmith_f_op_f32(1286f + global3.b), Struct_2(func_1().a.a, vec3<bool>(true, func_3(vec4<u32>(u_input.a, global3.a.x, 99958u, 4294967295u)).a.b.x, true))), func_1().a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.c, global3.c, 367f, global3.b)))))))) - vec4<f32>(1274f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.c, 582f)), -1267f))), _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(max(global3.c, 1118f))), _wgslsmith_f_op_f32(-1012f - _wgslsmith_f_op_f32(f32(-1f) * -2830f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, global3.c, -353f) + var_2.zzz), vec3<f32>(global3.c, 224f, global3.b), true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.wwz)))))) - _wgslsmith_f_op_vec3_f32(-var_2.zzz));
    global1 = array<Struct_2, 10>();
    return StorageBuffer(-min(u_input.c.x, global2[_wgslsmith_index_u32(28607u, 11u)]), global3.a.x, vec3<f32>(var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -405f), var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))))), global3.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!(_wgslsmith_mult_i32(firstTrailingBit(40601i), ~(-14308i)) <= firstTrailingBit(u_input.c.x)), global1[_wgslsmith_index_u32(abs(global3.a.x) & _wgslsmith_div_u32(_wgslsmith_add_u32(global3.a.x, ~global3.a.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global3.a.x, 1u)), global3.a.zz)), 10u)]);
    var var_1 = func_1();
    let var_2 = var_0.a;
    global1 = array<Struct_2, 10>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.b - -239f))), _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(min(-947f, _wgslsmith_f_op_f32(ceil(-725f))))), global3.c, _wgslsmith_f_op_f32(abs(global3.b))));
    let var_4 = false;
    let var_5 = global3.c;
    let x = u_input.a;
    s_output = func_2();
}

