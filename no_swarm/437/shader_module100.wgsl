struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(1u, Struct_1(vec2<u32>(0u, 1u)), 1u), Struct_4(29059u, Struct_1(vec2<u32>(0u, 0u)), 1u), Struct_4(0u, Struct_1(vec2<u32>(1u, 29211u)), 1u), Struct_4(41533u, Struct_1(vec2<u32>(0u, 78358u)), 60521u), Struct_4(19748u, Struct_1(vec2<u32>(78195u, 4294967295u)), 4294967295u), Struct_4(4294967295u, Struct_1(vec2<u32>(93013u, 11412u)), 1u), Struct_4(43234u, Struct_1(vec2<u32>(82851u, 3868u)), 52988u), Struct_4(0u, Struct_1(vec2<u32>(1u, 4294967295u)), 98696u), Struct_4(74112u, Struct_1(vec2<u32>(1u, 23011u)), 135509u), Struct_4(6533u, Struct_1(vec2<u32>(350u, 15173u)), 31839u), Struct_4(1u, Struct_1(vec2<u32>(1u, 55723u)), 0u), Struct_4(14770u, Struct_1(vec2<u32>(23856u, 96824u)), 1u), Struct_4(7729u, Struct_1(vec2<u32>(43353u, 4294967295u)), 0u), Struct_4(0u, Struct_1(vec2<u32>(36102u, 41243u)), 1u), Struct_4(17660u, Struct_1(vec2<u32>(50496u, 1u)), 44840u), Struct_4(0u, Struct_1(vec2<u32>(29378u, 63596u)), 4294967295u), Struct_4(3083u, Struct_1(vec2<u32>(4294967295u, 0u)), 4294967295u));

var<private> global1: array<f32, 17>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    global0 = array<Struct_4, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 17u)])) + -212f);
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], -1460f, -358f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(34241u, 17u)] + 125f)))))));
    global1 = array<f32, 17>();
    var var_2 = Struct_1(min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    return var_2.a.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> vec2<u32> {
    global2 = select(!(!arg_0.a.ywx), !arg_0.a.xxw, select(vec3<bool>(arg_1.x, all(global2.yy), select(true, true, all(vec4<bool>(global2.x, arg_2, false, arg_2)))), !arg_0.a.wxz, true));
    global1 = array<f32, 17>();
    let var_0 = arg_0.a.yw;
    global1 = array<f32, 17>();
    let var_1 = vec2<u32>(~(~11673u), 86898u);
    return vec2<u32>(firstLeadingBit(~var_1.x), ~countOneBits(44305u));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_1(select(vec2<u32>(reverseBits(66522u), ~arg_0), func_3(Struct_3(vec4<bool>(true, global2.x, global2.x, global2.x)), !(!vec4<bool>(global2.x, global2.x, true, true)), global2.x), global2.yy));
    let var_1 = Struct_3(!vec4<bool>(!(!global2.x), false, all(global2.yy), all(!vec4<bool>(global2.x, global2.x, false, global2.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], -1622f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, -457f, global1[_wgslsmith_index_u32(arg_0, 17u)])), vec3<f32>(-236f, 658f, global1[_wgslsmith_index_u32(45188u, 17u)])))));
    let var_3 = Struct_2(min(vec3<i32>(arg_1, abs(u_input.b), arg_1) & _wgslsmith_mult_vec3_i32(~vec3<i32>(32178i, -1i, u_input.b), select(vec3<i32>(-18634i, arg_1, -23279i), vec3<i32>(-22073i, -24991i, u_input.a), vec3<bool>(var_1.a.x, false, global2.x))), -(vec3<i32>(u_input.b, u_input.a, arg_1) & ~vec3<i32>(-2147483647i, -2147483647i, arg_1))), _wgslsmith_f_op_vec2_f32(trunc(var_2.zx)));
    let var_4 = _wgslsmith_f_op_f32(176f - _wgslsmith_f_op_f32(f32(-1f) * -2987f));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_2(vec3<i32>(u_input.a, i32(-1i) * -12192i, u_input.a), vec2<f32>(-599f, _wgslsmith_f_op_f32(sign(1989f)))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)), 2008f, global2.x));
    global2 = vec3<bool>(1i >= (i32(-1i) * -(var_0.a.a.x ^ u_input.b)), func_1(vec3<bool>(global2.x, global2.x, global2.x), true) < 0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1302f, _wgslsmith_f_op_f32(-292f + global1[_wgslsmith_index_u32(0u, 17u)]))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f), 740f));
    var var_2 = func_2(1u, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(-65105i, var_0.a.a.x, 0i, 29139i), vec4<i32>(u_input.a, var_0.a.a.x, 1478i, 2147483647i), global2.x), vec4<i32>(u_input.b, u_input.a, ~(-34774i), 2147483647i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.b * var_0.a.b)));
    global2 = vec3<bool>(all(var_2.a.zyw), any(!vec3<bool>(all(vec2<bool>(false, global2.x)), !var_2.a.x, func_2(51311u, -4405i).a.x)), global2.x);
    var var_4 = Struct_3(vec4<bool>(global2.x, all(func_2(0u, select(u_input.a, -26311i, global2.x)).a.yzz), false | any(select(vec3<bool>(global2.x, false, true), var_2.a.wyz, vec3<bool>(var_2.a.x, global2.x, false))), 400i != _wgslsmith_sub_i32(-74604i, u_input.b)));
    let var_5 = func_2(~_wgslsmith_mod_u32(reverseBits(firstTrailingBit(9192u)), 1u), var_0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(abs(~vec3<u32>(0u, 2284u, 0u)), abs(vec3<u32>(4294967295u, 0u, 37180u)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 3544u, 45557u, 57530u)), ~u_input.a).a.yyw)), min(select(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 24229u)), true), ~abs(~vec2<u32>(70896u, 37239u))), abs(reverseBits(func_3(var_5, func_2(1u, -31532i).a, all(var_5.a.zww)).x)));
}

