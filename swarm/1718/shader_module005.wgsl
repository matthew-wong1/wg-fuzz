struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: Struct_2;

var<private> global2: array<f32, 5> = array<f32, 5>(270f, -137f, -897f, 852f, 1314f);

var<private> global3: array<Struct_1, 18>;

var<private> global4: u32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    global4 = arg_2.a;
    global4 = _wgslsmith_div_u32(1u, arg_0);
    var var_0 = vec2<bool>(arg_1.d.x, false);
    global0 = vec3<bool>(true, all(!global1.a.e.zyz), !(!(!var_0.x)));
    var var_1 = 1333f;
    return 19797u;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(~(global1.a.c.x << (~4294967295u % 32u)), 18u)], Struct_1(~33010u, firstTrailingBit(_wgslsmith_mod_vec4_i32(select(u_input.c, u_input.b, global1.b.e), reverseBits(u_input.c))), _wgslsmith_add_vec2_u32(vec2<u32>(min(50678u, 5657u), _wgslsmith_div_u32(15135u, global1.a.c.x)), vec2<u32>(~global1.b.c.x, func_3(global1.b.a, Struct_1(global1.b.c.x, u_input.b, vec2<u32>(global1.b.c.x, global1.b.a), vec2<bool>(true, global0.x), vec4<bool>(true, true, global0.x, true)), global3[_wgslsmith_index_u32(global1.b.c.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]))), vec2<bool>(any(vec3<bool>(global1.b.d.x, global0.x, global0.x)), !any(vec2<bool>(false, global0.x))), !global1.b.e), vec2<f32>(880f, -808f), global2[_wgslsmith_index_u32(global1.b.a, 5u)], global1.d);
    var var_1 = !select(select(select(!vec3<bool>(global0.x, false, false), vec3<bool>(var_0.a.e.x, false, var_0.b.d.x), vec3<bool>(true, true, var_0.a.e.x)), vec3<bool>(any(global1.b.e), true, true), select(global1.a.e.wyw, select(global1.a.e.wzz, var_0.b.e.wyy, global0.x), global0.x || true)), vec3<bool>(any(var_0.a.e) || select(true, true, false), true, false), vec3<bool>(select(var_0.a.e.x, var_0.b.e.x, true), false, !var_0.b.e.x));
    var var_2 = global3[_wgslsmith_index_u32(var_0.a.a, 18u)];
    let var_3 = true;
    var_1 = var_2.e.xxx;
    return firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0.b.c.x)), select(vec2<u32>(global1.a.a, var_0.a.a), vec2<u32>(var_2.c.x, var_2.c.x), vec2<bool>(var_3, global1.b.e.x))), ~(var_2.c.x | 4294967295u)));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(24054u, firstTrailingBit(vec4<i32>(global1.b.b.x, reverseBits(1i), max(u_input.b.x, _wgslsmith_mult_i32(global1.b.b.x, 2147483647i)), 0i)), global1.b.c, select(global0.yz, vec2<bool>(all(select(global1.a.e.wzx, vec3<bool>(true, global1.b.e.x, global1.b.d.x), global1.a.e.x)), all(select(global1.b.e.xyz, vec3<bool>(global0.x, global0.x, true), global0.x))), !(!vec2<bool>(true, var_0))), vec4<bool>(!(!(!var_0)), global0.x, !select(!global1.a.d.x, global0.x, true), global1.b.e.x));
    global2 = array<f32, 5>();
    var var_2 = Struct_1(func_2(), vec4<i32>(~abs(u_input.b.x | global1.a.b.x), _wgslsmith_div_i32(var_1.b.x, var_1.b.x ^ abs(0i)), i32(-1i) * -10498i, -1i), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.a, var_1.a), ~(~var_1.c)), select(select(!vec2<bool>(true, var_0), global0.yz, false), global0.yz, any(vec2<bool>(any(var_1.e), global0.x))), select(!global1.a.e, !var_1.e, all(!(!vec2<bool>(global1.b.e.x, var_1.d.x)))));
    var var_3 = Struct_2(Struct_1(abs(countOneBits(global1.b.c.x) | var_2.c.x), vec4<i32>(~1i, -26708i >> (var_2.c.x % 32u), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(var_2.b.x, -76324i, -53338i))) & _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 0i, var_1.b.x, var_1.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1.a.b.x, global1.a.b.x, global1.a.b.x), u_input.c)), vec2<u32>(~(~var_2.a), ~reverseBits(var_1.c.x)), !var_1.d, select(!global1.a.e, select(!vec4<bool>(global0.x, var_0, var_1.d.x, var_0), select(vec4<bool>(true, true, global1.b.d.x, global1.b.d.x), vec4<bool>(var_2.d.x, global0.x, true, global0.x), true), select(vec4<bool>(var_0, var_0, var_1.e.x, var_2.d.x), var_1.e, vec4<bool>(global1.b.d.x, false, global1.b.e.x, false))), _wgslsmith_f_op_f32(722f + -263f) <= _wgslsmith_f_op_f32(-594f - global1.e))), global3[_wgslsmith_index_u32(3586u, 18u)], vec2<f32>(_wgslsmith_f_op_f32(max(913f, -103f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1069f + global1.d)))), 1f, _wgslsmith_f_op_f32(-global1.d));
    return global3[_wgslsmith_index_u32(0u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(1u, ~(~(global1.a.c.x | global1.b.c.x))), global1.b.a, abs(25058u), global1.a.c.x);
    var var_1 = vec2<bool>(any(select(!(!vec3<bool>(false, true, global1.b.d.x)), vec3<bool>(true, true, true), select(global1.b.e.xxw, select(vec3<bool>(global1.b.d.x, global0.x, false), global1.a.e.xyz, global0.x), global1.b.e.yxx))), !(!(select(global0.x, false, global0.x) && global1.a.e.x)));
    var var_2 = vec4<i32>(-1i, 1i, -4019i, _wgslsmith_sub_i32(global1.b.b.x ^ global1.b.b.x, ~(-1i)));
    var var_3 = Struct_2(func_1(), Struct_1(~(~abs(16458u)), vec4<i32>(-17169i, -2147483647i, _wgslsmith_sub_i32(-58822i, -7822i), var_2.x | _wgslsmith_mult_i32(var_2.x, var_2.x)), var_0.wy, !(!vec2<bool>(false, global0.x)), global1.b.e), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(321f * global1.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b.a, 5u)]), global1.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2509f))), global1.e));
    let var_4 = Struct_2(func_1(), func_1(), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(var_3.a.c.x, 5u)], -1068f))), 899f, global2[_wgslsmith_index_u32(~(10652u ^ firstLeadingBit(func_1().c.x)), 5u)]);
    let var_5 = func_1();
    global3 = array<Struct_1, 18>();
    let var_6 = var_3.c;
    global2 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

