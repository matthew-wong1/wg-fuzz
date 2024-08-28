struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 16> = array<u32, 16>(46761u, 35704u, 98949u, 0u, 1u, 0u, 54320u, 101793u, 20209u, 4294967295u, 0u, 57565u, 1u, 0u, 0u, 56918u);

var<private> global2: array<i32, 7>;

var<private> global3: Struct_4 = Struct_4(vec4<i32>(2930i, -1i, 54745i, -1i), vec4<u32>(1u, 0u, 4689u, 4294967295u), Struct_2(Struct_1(vec3<i32>(-1i, -533i, 12556i), vec4<bool>(false, true, true, true), vec3<i32>(-12355i, -1i, i32(-2147483648)), vec3<u32>(1u, 23336u, 0u)), vec2<u32>(1u, 1u), vec3<f32>(1484f, -622f, -812f), 43428u, vec3<i32>(-1i, -52005i, 31942i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<i32, 7>();
    global2 = array<i32, 7>();
    global0 = !(!arg_0.b.x);
    global0 = any(vec2<bool>(false, !arg_0.b.x));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.c.c.x)), global3.c.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.c.c.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c.c.x)))))), _wgslsmith_f_op_f32(round(global3.c.c.x)));
    return _wgslsmith_sub_u32(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(select(global3.b | vec4<u32>(4309u, global3.b.x, 15446u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 8366u), arg_0.b), vec4<u32>(arg_0.d.x, _wgslsmith_dot_vec2_u32(arg_0.d.yx, u_input.a.zz), abs(global3.b.x), ~41009u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: u32) -> vec4<i32> {
    let var_0 = ~(~arg_1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.c.x, -1396f, -157f, global3.c.c.x)))) + vec4<f32>(_wgslsmith_f_op_f32(680f + global3.c.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -209f, -729f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-345f, -1670f, arg_2.x, -1388f)))));
    global3 = Struct_4(-reverseBits(global3.a), _wgslsmith_div_vec4_u32(firstTrailingBit(reverseBits(u_input.a) & vec4<u32>(arg_1.x, u_input.a.x, global1[_wgslsmith_index_u32(global3.b.x, 16u)], 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), global3.b.x, 96597u, func_3(Struct_1(global3.c.a.a, vec4<bool>(global3.c.a.b.x, false, global3.c.a.b.x, false), global3.c.e, vec3<u32>(4294967295u, arg_3, 12927u)))), global3.b)), global3.c);
    global1 = array<u32, 16>();
    let var_2 = Struct_3(global3.c.a, select(select(global3.c.a.b.ww, !select(global3.c.a.b.zx, global3.c.a.b.xw, vec2<bool>(global3.c.a.b.x, true)), global3.c.a.b.wy), vec2<bool>(!any(vec2<bool>(true, false)), global3.c.a.b.x), select(!vec2<bool>(global3.c.a.b.x, false), !select(vec2<bool>(true, global3.c.a.b.x), vec2<bool>(true, global3.c.a.b.x), global3.c.a.b.xx), global2[_wgslsmith_index_u32(arg_3 >> (global1[_wgslsmith_index_u32(1u, 16u)] % 32u), 7u)] > -9626i)));
    return vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global3.a.zwz, vec3<i32>(var_2.a.c.x, -5664i, -2147483647i)), -var_2.a.c.x), ~global3.a.x), global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(~global3.b.yyz, arg_1), var_0), 7u)], _wgslsmith_div_i32(_wgslsmith_mod_i32(-abs(1i), _wgslsmith_add_i32(37318i, _wgslsmith_dot_vec2_i32(global3.a.ww, vec2<i32>(2147483647i, -29457i)))), 33617i), 24201i);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    return Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.e.x, 12569i, global2[_wgslsmith_index_u32(1u, 7u)]), arg_0.a.wyw << (arg_0.b.wyw % vec3<u32>(32u))) << ((vec3<u32>(31621u, 1u, global1[_wgslsmith_index_u32(global3.c.a.d.x, 16u)]) & arg_0.b.yyx) % vec3<u32>(32u)), global3.c.a.b, global3.a.ywx, (global3.b.yzz & vec3<u32>(global1[_wgslsmith_index_u32(72150u, 16u)], arg_0.c.d, arg_0.c.d)) ^ ~select(vec3<u32>(1u, 27783u, global3.b.x), vec3<u32>(u_input.a.x, 0u, global3.c.a.d.x), arg_0.c.a.b.xyw)), !arg_0.c.a.b.wz);
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global0 = false;
    var var_0 = ~vec4<u32>(~u_input.a.x, (_wgslsmith_mult_u32(0u, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global3.c.a.d.x, arg_0.x, global3.c.d), global3.b) % 32u)) >> (global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x | 9202u), 16u)] % 32u), ~global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u), 16u)], ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.x), global3.b.wy), _wgslsmith_mod_vec2_u32(arg_0.xy, vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 16u)], 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.c.x, -315f, 934f, -835f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.c.x, global3.c.c.x, global3.c.c.x, global3.c.c.x) + vec4<f32>(877f, global3.c.c.x, global3.c.c.x, global3.c.c.x))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(global3.c.c.x, 1014f, global3.c.a.b.x)), _wgslsmith_f_op_f32(exp2(global3.c.c.x)), global3.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -136f)), vec4<f32>(_wgslsmith_f_op_f32(1000f * global3.c.c.x), _wgslsmith_f_op_f32(abs(2164f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -241f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.c.c.x), 1343f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c.c.x))))), -817f));
    let var_2 = vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global3.a.x, global3.c.a.a.x);
    var var_3 = any(!global3.c.a.b.xw);
    return func_4(Struct_4(func_2(firstLeadingBit(-global3.a.zy), arg_0, _wgslsmith_f_op_vec2_f32(select(global3.c.c.yy, vec2<f32>(global3.c.c.x, 164f), global3.c.a.b.zw)), ~_wgslsmith_mod_u32(global3.c.b.x, u_input.a.x)), ~global3.b, global3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~global3.c.a.d);
    global0 = var_0.b.x;
    global2 = array<i32, 7>();
    global0 = var_0.b.x;
    var var_1 = -1309f;
    global1 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a.a.x, countOneBits(global3.c.a.a.x)), -(var_0.a.c.x ^ global2[_wgslsmith_index_u32(~85894u, 7u)])), 37041u);
}

