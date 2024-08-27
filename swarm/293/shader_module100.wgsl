struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: vec3<i32>;

var<private> global2: vec4<f32> = vec4<f32>(-1696f, -340f, -1129f, 1717f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = abs(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(-global1.zy, vec2<i32>(global1.x, -43713i)), global1.zx));
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, global2.x, global0[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 55032u, arg_0.a), vec4<u32>(40777u, 53263u, u_input.a.x, u_input.b)), 1u)]))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1934f - _wgslsmith_f_op_f32(global2.x + 200f)), 583f));
    let var_3 = select(select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(arg_0.a, 1u)], global0[_wgslsmith_index_u32(5603u, 1u)], global0[_wgslsmith_index_u32(26137u, 1u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)]), global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(!global0[_wgslsmith_index_u32(0u, 1u)], global1.x != 1i, !global0[_wgslsmith_index_u32(46079u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(15130u, u_input.b), 1u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 1u)], false, true), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.b.x, 1u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(arg_0.a, 1u)]), false), vec4<bool>(u_input.b != 0u, global0[_wgslsmith_index_u32(~u_input.b, 1u)], true, global0[_wgslsmith_index_u32(arg_0.a, 1u)])), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yx)), 1u)]), !(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(arg_0.b.x, 1u)])), select(!(!(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(86402u, 1u)]))), select(vec4<bool>(global1.x <= -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a, arg_0.b.x), 1u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(arg_0.b.x, 1u)], global0[_wgslsmith_index_u32(69916u, 1u)], false), true), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.b, 1u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(32734u, 1u)])), any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true, false, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 1u)], true), global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(u_input.b, 1u)])));
    var var_4 = Struct_4(countOneBits(_wgslsmith_mult_i32(var_0.x, -2405i) ^ var_0.x));
    return select(~_wgslsmith_clamp_u32(~(arg_0.b.x >> (0u % 32u)), u_input.b, 1u), arg_0.b.x, var_3.x);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-global2.x))))));
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, u_input.a.x), 1u, arg_1.a.x), ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(arg_1.c.b, arg_1.c.b))) ^ ~vec2<u32>(0u, 1u);
    var var_1 = Struct_5(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.b & arg_1.c.b.x), _wgslsmith_mult_u32(36678u, arg_1.b)), arg_1, ~arg_1.c.b, global2.x, arg_0);
    global0 = array<bool, 1>();
    let var_2 = reverseBits(abs(vec4<u32>(var_0.x, u_input.a.x, u_input.a.x & u_input.a.x, func_3(var_1.b.c))));
    return vec3<u32>(min(var_0.x, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.c, vec4<u32>(4294967295u, arg_1.c.a, 4294967295u, 35263u)), _wgslsmith_add_vec4_u32(var_2, vec4<u32>(u_input.b, var_0.x, 8025u, var_0.x))))), u_input.a.x, arg_1.a.x);
}

fn func_1() -> u32 {
    global0 = array<bool, 1>();
    var var_0 = ~u_input.a;
    var_0 = select(u_input.a, _wgslsmith_sub_vec3_u32(max(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), vec3<u32>(0u, u_input.b, ~1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, 56967u << (1u % 32u), ~0u), u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x, 1u), 1u)]);
    let var_1 = select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u ^ ~(var_0.x & var_0.x), 1u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(76862u, 0u, 16841u), func_2(Struct_4(29861i), Struct_3(var_0.xz, u_input.a.x, Struct_2(13031u, vec4<u32>(72395u, u_input.a.x, 4294967295u, var_0.x)), 45479i))) > 4294967295u, true), !select(vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), true, true, true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)], global0[_wgslsmith_index_u32(4704u, 1u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(var_0.x, 1u)], true)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(var_0.x, 1u)], global0[_wgslsmith_index_u32(var_0.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4138u, 1u)], false, false)), global0[_wgslsmith_index_u32(min(u_input.a.x, ~34047u), 1u)]), true);
    let var_2 = (countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.xx, global1.xx), 1i, -global1.x, -55847i)) & vec4<i32>(-1i, max(-43151i, 1i), global1.x, firstLeadingBit(-17650i))) >> (_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) | ~vec4<u32>(u_input.a.x, var_0.x, u_input.b, 81805u)), ~(~(~vec4<u32>(53031u, 1u, 41636u, 28823u)))) % vec4<u32>(32u));
    return _wgslsmith_div_u32(34569u >> (~min(~1u, firstTrailingBit(u_input.b)) % 32u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u >> (_wgslsmith_mod_u32(u_input.b, 0u) % 32u), _wgslsmith_add_u32(abs(u_input.a.x), ~u_input.a.x), ~func_1()) >> (u_input.a % vec3<u32>(32u));
    global1 = vec3<i32>(47344i, 1i, global1.x);
    var var_1 = all(vec4<bool>(any(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 1u)], false))), global2.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global2.x)) - 1017f), ~(0i >> (var_0.x % 32u)) < (_wgslsmith_sub_i32(global1.x, -53714i) >> (func_1() % 32u)), !all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(18671u, 1u)]))));
    let var_2 = Struct_2(var_0.x, vec4<u32>(select(58457u, ~47260u, true), ~_wgslsmith_mod_u32(u_input.b << (44613u % 32u), u_input.b), u_input.b, max(select(u_input.a.x & 3961u, var_0.x << (33219u % 32u), true), firstTrailingBit(var_0.x ^ 4294967295u))));
    global1 = ~vec3<i32>(0i, select(-39166i, global1.x & (2147483647i >> (u_input.a.x % 32u)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(2548u, 1u)], false, global0[_wgslsmith_index_u32(u_input.b, 1u)]))), global1.x);
    let var_3 = Struct_4(global1.x);
    global1 = -select(min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -2147483647i, global1.x), vec3<i32>(-1i, var_3.a, -2147483647i)), ~vec3<i32>(-62860i, -2147483647i, var_3.a)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.a, global1.x, 0i), vec3<i32>(0i, 2147483647i, var_3.a))), -countOneBits(~vec3<i32>(-41793i, 13727i, 44473i)), _wgslsmith_div_i32(13860i, global1.x) > ~max(-29074i, global1.x));
    let var_4 = var_3;
    let var_5 = -22682i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(499f, -1104f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, global2.x, 527f, global2.x) + vec4<f32>(global2.x, 850f, -1000f, global2.x)), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 1u)], false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, -1081f, global2.x, global2.x) * vec4<f32>(1160f, global2.x, -755f, 744f)))))), ~u_input.a.zx, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1110f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x * -144f))), global2.x, -820f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, global2.x, 1039f, 505f)))), firstTrailingBit(select(vec4<i32>(~var_5, 59055i, var_5, ~(-21857i)), vec4<i32>(-1i, ~14471i, 3304i >> (u_input.a.x % 32u), var_4.a & global1.x), !(!vec4<bool>(global0[_wgslsmith_index_u32(38469u, 1u)], global0[_wgslsmith_index_u32(var_2.b.x, 1u)], true, false)))));
}

