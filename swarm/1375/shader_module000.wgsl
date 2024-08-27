struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32;

var<private> global2: array<u32, 9>;

var<private> global3: vec2<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(1212f);
    var var_1 = Struct_2(var_0.a);
    var var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32((u_input.a | 2147483647i) ^ (-12050i >> (global0.x % 32u)), 2147483647i), _wgslsmith_add_i32(1i, u_input.a)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-473f, global3.x) * _wgslsmith_f_op_f32(min(-398f, var_0.a)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(937f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_1.a)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1126f)) * var_0.a);
    return !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), false), vec4<bool>(true, true, var_1.a <= _wgslsmith_f_op_f32(select(389f, global3.x, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), vec4<bool>(true, true || all(vec4<bool>(true, true, true, true)), -1145f > _wgslsmith_f_op_f32(var_0.a * -1000f), !all(vec4<bool>(true, true, false, false))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, global3.x) - vec2<f32>(global3.x, global3.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, global3.x))), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -921f) * vec2<f32>(global3.x, 129f)) * vec2<f32>(-737f, global3.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x)))), max(global0.yz, ~_wgslsmith_sub_vec2_u32(global0.zx & global0.zz, select(vec2<u32>(global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 9u)], 9u)], 9u)]), global0.zz, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), ~(vec2<i32>(-2147483647i, -54700i) << ((vec2<u32>(27390u, global0.x) << (global0.xx % vec2<u32>(32u))) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), 481f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-815f - global3.x))), global3.x, global3.x), vec3<bool>(true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), func_3(), true)), true));
    var var_1 = 1000f;
    var var_2 = Struct_1(var_0.d.yz, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.x, global2[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(60359u, 4294967295u, 1u), vec3<u32>(var_0.b.x, global0.x, 29894u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(31768u, 0u, 7317u, global0.x), vec4<u32>(32204u, global2[_wgslsmith_index_u32(var_0.b.x, 9u)], 36097u, 31112u)), ~vec4<u32>(0u, var_0.b.x, 1u, var_0.b.x))), firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2570f, -1047f) * _wgslsmith_f_op_vec3_f32(-var_0.d)), vec3<bool>(all(func_3()), true, func_3().x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(-859f)));
    let var_4 = 1120f;
    return var_3;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    global0 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(9014u, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)])) ^ (vec3<u32>(global0.x, 1u, 65526u) >> (vec3<u32>(1u, global0.x, global0.x) % vec3<u32>(32u))), vec3<u32>(global0.x, 0u, 11962u) >> ((vec3<u32>(48206u, global0.x, 38820u) << (vec3<u32>(1u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37247u, 9u)], 9u)]) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global3.x)), -978f)), global0.zy, ~_wgslsmith_add_i32(0i, ~u_input.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), -1485f, 302f))))), arg_0.wxx);
    let var_1 = any(arg_0.xz);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_2().a * _wgslsmith_f_op_f32(floor(340f))), _wgslsmith_f_op_f32(f32(-1f) * -104f)))), vec2<u32>(countOneBits(1u & select(var_0.b.x, 1u, true)), ~global2[_wgslsmith_index_u32(~var_0.b.x, 9u)]), 2147483647i | _wgslsmith_mult_i32(0i, countOneBits(_wgslsmith_div_i32(-20529i, var_0.c))), var_0.d, func_3().xzx);
    global1 = abs(var_2.b.x);
    return Struct_2(_wgslsmith_f_op_f32(-arg_1.a));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-1433f, arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1.a)))));
    global2 = array<u32, 9>();
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(132f, global3.x))) * vec2<f32>(-887f, 469f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-398f, var_0.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(634f, -1246f), vec2<f32>(arg_0, -1218f))))))), ~(~global0.yy), _wgslsmith_mult_i32(_wgslsmith_add_i32(~(-u_input.a), u_input.a), -20079i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, arg_1.a, arg_0))) + _wgslsmith_div_vec3_f32(vec3<f32>(1116f, global3.x, arg_1.a), vec3<f32>(1304f, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(-arg_1.a), arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(742f, var_0.a, arg_0))) + vec3<f32>(arg_0, arg_0, -1235f)), true)))), func_3().yyx);
    global2 = array<u32, 9>();
    return var_1.a;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    global2 = array<u32, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -438f)) + 455f), func_4(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)), func_2()), u_input.a)), vec2<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(55847u, 36178u, arg_0) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3728u, 9u)], 9u)], 4294967295u, 63691u), ~vec3<u32>(global2[_wgslsmith_index_u32(global0.x, 9u)], global0.x, global0.x)), ~(~0u)), _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(global0.x, 9u)], arg_0, 0u, arg_0)), select(firstTrailingBit(vec4<u32>(4036u, 44577u, 1u, arg_0)), vec4<u32>(global0.x, 26695u, global2[_wgslsmith_index_u32(global0.x, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)]), true))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)))))) - vec3<f32>(global3.x, _wgslsmith_f_op_f32(609f - 493f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-729f, 1010f)), -1405f)))), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) | true, !all(vec3<bool>(true, true, true))));
    global0 = countOneBits(vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(0u, 9u)]), select(_wgslsmith_add_u32(10144u, 1u), countOneBits(13680u), false & var_0.e.x), arg_0 << (_wgslsmith_mod_u32(arg_0, 0u) % 32u))) | vec3<u32>(~(~1u), abs(min(4294967295u << (global0.x % 32u), ~68090u)), 1u);
    let var_1 = Struct_2(func_2().a);
    let var_2 = var_1;
    return vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a, var_2.a))), global3.x)) - _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)) * 2150f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-(-vec2<i32>(u_input.a, u_input.a) << (reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 9u)], global0.x)) % vec2<u32>(32u))) & ~vec2<i32>(-59702i, _wgslsmith_mod_i32(-2147483647i, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a ^ 16285i, ~u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-53523i, 13550i), -vec2<i32>(2147483647i, 2147483647i), ~vec2<i32>(u_input.a, u_input.a))) >> ((vec2<u32>(1u, global0.x) >> (_wgslsmith_add_vec2_u32(global0.zz, ~global0.zy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -144f) * vec2<f32>(944f, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(170f, 1343f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.x, global3.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -642f)))), _wgslsmith_f_op_vec2_f32(func_1(27982u | min(global0.x, 0u))))));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(_wgslsmith_mult_u32(56092u, 67084u)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(7520u, 34806u, 1980u, global2[_wgslsmith_index_u32(global0.x, 9u)]), vec4<u32>(1u, global0.x, 0u, 15457u))), 9u)], 1u), vec3<u32>(_wgslsmith_clamp_u32(20741u, 84784u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 15934u, 0u, 1u), vec4<u32>(72209u, 5266u, 4294967295u, 0u), vec4<bool>(false, true, true, true)), max(vec4<u32>(0u, global2[_wgslsmith_index_u32(global0.x, 9u)], 4294967295u, global0.x), vec4<u32>(1u, global0.x, global2[_wgslsmith_index_u32(14084u, 9u)], 4046u)))), select(_wgslsmith_sub_u32(78733u, ~4294967295u), 1u, !all(vec2<bool>(false, true))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(44263u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], 4294967295u), 9u)]));
    let var_1 = func_4(func_3(), Struct_2(-1000f));
    global0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~global0.x), 9u)], 9u)], global0.x), vec3<u32>(min(global2[_wgslsmith_index_u32(21029u, 9u)], 0u), min(global0.x, global0.x), 31384u) ^ (vec3<u32>(8354u, global0.x, 5919u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(2397u, 9u)], 1u, global0.x), vec3<u32>(64717u, global2[_wgslsmith_index_u32(75383u, 9u)], global0.x))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2283f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(1000f * -1866f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f + var_1.a))), var_1.a, -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), var_3.x, -569f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1150f, global3.x) * vec3<f32>(-942f, -1339f, var_3.x)) + var_3.zyw)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1154f))))), select(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9108u), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global0.x, 9u)])), 4294967295u), ~(~global0.xz)), _wgslsmith_sub_u32(countOneBits(74278u) ^ global0.x, 4294967295u), all(vec4<bool>(true, true, true, true)) == all(func_3())), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -941f, -404f, -1455f) - vec4<f32>(var_1.a, -1064f, global3.x, 141f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-468f, var_1.a, 1254f, var_1.a))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global3.x, 177f, 1283f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, global3.x, global3.x) - vec4<f32>(-400f, 626f, var_1.a, -1075f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x - 736f), 292f, -104f, -1800f)))));
}

