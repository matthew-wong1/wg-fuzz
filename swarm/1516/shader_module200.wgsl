struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 26> = array<i32, 26>(3877i, -1i, 50461i, -1i, -38866i, -17150i, i32(-2147483648), -1i, 72261i, 33037i, -11947i, -21556i, 1i, 0i, -24035i, -9658i, 2147483647i, 30935i, -744i, 4348i, 16414i, -1i, -1i, -54455i, -59019i, 1i);

var<private> global2: array<i32, 28> = array<i32, 28>(-27117i, -1i, 0i, 10110i, -64522i, -23454i, 1i, 1i, 18595i, -35689i, -1i, 80663i, i32(-2147483648), 0i, 42871i, -1i, 0i, 85294i, 27262i, 2147483647i, -4564i, -48283i, 57531i, 0i, 1i, 1i, -41024i, i32(-2147483648));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(-291i, 41719i, i32(-2147483648)), vec4<u32>(4294967295u, 11251u, 29086u, 4294967295u), 2147483647i, vec2<f32>(-1793f, 954f)), Struct_1(vec3<i32>(35147i, -40885i, 0i), vec4<u32>(18567u, 34063u, 19637u, 5761u), 0i, vec2<f32>(1259f, 345f)), Struct_1(vec3<i32>(47852i, 1017i, 2147483647i), vec4<u32>(16417u, 48589u, 4294967295u, 0u), 76197i, vec2<f32>(3028f, -1684f)), Struct_1(vec3<i32>(16838i, -18636i, -40644i), vec4<u32>(3535u, 60372u, 14875u, 54830u), 0i, vec2<f32>(-384f, -722f)), Struct_1(vec3<i32>(28301i, 30992i, -24780i), vec4<u32>(1u, 0u, 4294967295u, 16586u), -1i, vec2<f32>(655f, 976f)), Struct_1(vec3<i32>(-6071i, 11412i, 2147483647i), vec4<u32>(1u, 1u, 1u, 40050u), -14020i, vec2<f32>(-468f, -405f)), Struct_1(vec3<i32>(31513i, 0i, 2147483647i), vec4<u32>(21929u, 4294967295u, 59085u, 1u), i32(-2147483648), vec2<f32>(-315f, -374f)), Struct_1(vec3<i32>(26412i, 14914i, 9783i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 50367u), -1i, vec2<f32>(-685f, -868f)), Struct_1(vec3<i32>(1993i, -5727i, -1i), vec4<u32>(24117u, 0u, 1u, 9868u), -52380i, vec2<f32>(149f, -1000f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global3 = Struct_1(vec3<i32>(-1i, global2[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.c, global3.b.x) << (u_input.c % 32u)), 28u)], ~u_input.b << (1u % 32u)), vec4<u32>(~39656u, global3.b.x, _wgslsmith_div_u32(u_input.c, ~(~31735u)), 4294967295u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-u_input.a, global3.a.x), ~(-42339i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1166f, 1065f)));
    let var_0 = global3.d.x;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(select(0u, ~3953u, true), 1u), ~126u), reverseBits(u_input.c)), 9u)];
    var var_2 = u_input.c;
    let var_3 = select(vec2<bool>(true, false), arg_0.yx, false);
    return ~(~(-global3.c));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-329f, global3.d.x, global3.d.x))))), vec3<f32>(global3.d.x, _wgslsmith_f_op_f32(660f + -256f), global3.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1420f, 643f, 1000f), vec3<f32>(global3.d.x, 2197f, 389f)))))));
    var var_1 = vec3<i32>(func_3(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), 1067i, _wgslsmith_dot_vec4_i32(max(~(~vec4<i32>(global1[_wgslsmith_index_u32(global3.b.x, 26u)], -6131i, 78609i, 2147483647i)), vec4<i32>(abs(global1[_wgslsmith_index_u32(u_input.c, 26u)]), global1[_wgslsmith_index_u32(u_input.c, 26u)] | -1i, 1i, global2[_wgslsmith_index_u32(global3.b.x, 28u)] ^ global1[_wgslsmith_index_u32(u_input.c, 26u)])), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, ~u_input.c), 26u)], -36174i, -global1[_wgslsmith_index_u32(0u, 26u)] ^ reverseBits(0i), 1i)));
    var var_2 = -global3.a.x;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global3.b, ~(~vec4<u32>(4294967295u, 0u, u_input.c, u_input.c))), min(~vec4<u32>(4294967295u, 16438u, global3.b.x, 1u), vec4<u32>(~88938u, _wgslsmith_add_u32(0u, u_input.c), countOneBits(global3.b.x), ~global3.b.x))) >> (u_input.c % 32u), 9u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1248f * -1679f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), global3.d.x))));
    return true;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    global2 = array<i32, 28>();
    let var_1 = var_0.d.x;
    var var_2 = select(-13193i, ~(var_0.c >> ((select(u_input.c, var_0.b.x, arg_0.x) & u_input.c) % 32u)), func_2());
    var var_3 = global3.b.x;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -100f)) * 687f), 474f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2009f, arg_1.d.x), vec2<f32>(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.d.x)))), true)));
    global4 = array<Struct_1, 9>();
    let var_1 = -max(_wgslsmith_dot_vec2_i32(global3.a.xy, vec2<i32>(~global3.c, -42100i)), -65804i);
    let var_2 = any(select(select(vec3<bool>(true, global3.b.x < 0u, u_input.c != 0u), vec3<bool>(select(true, false, false), true, false), true), vec3<bool>(false, true, true), true));
    global4 = array<Struct_1, 9>();
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(arg_1.c, arg_1.c, -1i, u_input.b), vec4<i32>(0i, global1[_wgslsmith_index_u32(0u, 26u)], 1i, var_1), true), ~vec4<i32>(global2[_wgslsmith_index_u32(1u, 28u)], -1i, -10193i, u_input.b)), vec4<i32>(global3.a.x, global1[_wgslsmith_index_u32(global3.b.x, 26u)] >> (4294967295u % 32u), func_3(vec3<bool>(true, true, false)), 1i)), 56521i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, var_1), countOneBits(vec4<i32>(-25736i, global1[_wgslsmith_index_u32(global3.b.x, 26u)], global2[_wgslsmith_index_u32(global3.b.x, 28u)], 8901i))), max(i32(-1i) * -59649i, global3.a.x)), abs(countOneBits(select(arg_1.b, vec4<u32>(arg_2.x, u_input.c, 62751u, 4294967295u), vec4<bool>(false, true, true, false)) >> (global3.b % vec4<u32>(32u)))), -abs(global1[_wgslsmith_index_u32(~0u, 26u)]), vec2<f32>(1668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(vec3<i32>(7400i, ~0i | global3.a.x, ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~7623u, 28u)], arg_2.a.x)), ~vec4<u32>(arg_2.b.x, u_input.c, 37081u, global3.b.x), arg_3.c, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    var var_1 = 1u;
    var var_2 = firstLeadingBit(vec3<u32>(1u, global3.b.x, 40787u));
    global3 = func_5(4294967295u, global3.a, func_4(_wgslsmith_f_op_f32(func_1(vec4<bool>(any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, false, true)), select(false, true, false)), Struct_1(~global3.a, vec4<u32>(var_2.x, 34879u, u_input.c, global3.b.x), var_0.x, vec2<f32>(global3.d.x, global3.d.x)))), global4[_wgslsmith_index_u32(~var_2.x, 9u)], ~max(vec3<u32>(var_2.x, global3.b.x, 1u) << (vec3<u32>(28503u, 84571u, 0u) % vec3<u32>(32u)), ~global3.b.wxy)), func_4(121f, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(min(u_input.c, 4294967295u), _wgslsmith_add_u32(66172u, 18487u))), 7u)], global3.b.yyw));
    let var_3 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), min(-2147483647i, -6970i) > _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global3.b.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global3.a.x, var_0.x), vec4<i32>(global2[_wgslsmith_index_u32(var_2.x, 28u)], global2[_wgslsmith_index_u32(var_2.x, 28u)], 2147483647i, global3.a.x))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, true)) && (global1[_wgslsmith_index_u32(global3.b.x, 26u)] == 0i), true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), func_2()));
    var var_4 = global3.b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(-u_input.b, global3.c << (var_2.x % 32u), func_3(var_3.zxx)), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-21319i, global1[_wgslsmith_index_u32(u_input.c, 26u)], global3.c, 0i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(u_input.c, 26u)], var_0.x, -1i)), global1[_wgslsmith_index_u32(var_4.x, 26u)] | var_0.x) & vec3<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 2147483647i), -2147483647i, -global3.a.x), true), ~(~(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(global3.b.x, 26u)], -51082i, 32795i) | vec4<i32>(2147483647i, 16769i, 1i, -2147483647i))), global3.d.x, global3.d.x, ~(~4294967295u));
}

