struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(64688i, 1i, 1i, 2147483647i, 42843i, i32(-2147483648), i32(-2147483648), -25793i, 8474i, -25684i, 0i);

var<private> global1: vec3<i32> = vec3<i32>(-36350i, -1i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.e.x;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -989f)));
    var var_2 = ((vec3<i32>(select(1i, 21038i, arg_0.a), i32(-1i) * -1i, 1i) ^ countOneBits(vec3<i32>(global1.x, 1i, 10516i))) | vec3<i32>(countOneBits(-1i), u_input.a, ~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 14355i))) << (vec3<u32>(u_input.b.x, abs(_wgslsmith_sub_u32(u_input.b.x, 15446u)), _wgslsmith_clamp_u32(u_input.b.x, 86712u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))) % vec3<u32>(32u));
    var var_3 = Struct_1(any(select(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.b, arg_0.a)), vec3<bool>(any(vec3<bool>(arg_0.a, true, arg_0.b)), true, true), true)), arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.e.x)), -908f), global1.x, vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, 882f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))));
    var var_4 = Struct_1(false, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, _wgslsmith_f_op_f32(var_0 - arg_0.e.x)))), var_3.d, vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-755f * arg_0.e.x)));
    return 59099u;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(true, all(vec3<bool>(!arg_1.a, arg_1.a, true)));
    var var_1 = select(!vec2<bool>(true, any(vec4<bool>(true, false, true, false))), !(!(!(!vec2<bool>(true, var_0.x)))), true);
    var var_2 = func_3(arg_1);
    var var_3 = arg_1;
    var_2 = ~(~31251u);
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_0.b;
    var var_2 = -abs(min(global1.zy, vec2<i32>(global0[_wgslsmith_index_u32(1u | u_input.b.x, 11u)], _wgslsmith_sub_i32(u_input.a, global0[_wgslsmith_index_u32(61802u, 11u)]))));
    var var_3 = Struct_1(!any(!vec4<bool>(false, true, var_1, var_0)), !all(vec4<bool>(true, false, true, true)) != true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.c))), arg_0.c)), ~arg_0.d, vec2<f32>(-1000f, -1000f));
    var var_4 = vec2<bool>(var_1, var_0 | true);
    return func_2(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), arg_0);
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global0 = array<i32, 11>();
    var var_0 = !select(vec2<bool>(all(!vec3<bool>(true, true, arg_0)), true), select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), vec2<bool>(true, true))), true & all(vec2<bool>(true, true)));
    let var_1 = func_4(func_2(firstLeadingBit(countOneBits(~u_input.b.x)), Struct_1(arg_0, all(vec4<bool>(arg_0, arg_0, true, false)), vec2<f32>(1f, 1f), -1i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1125f, 1227f))))));
    var_0 = select(vec2<bool>(true, false), select(vec2<bool>(true, (false & var_0.x) & false), vec2<bool>(select(true, var_1.b, false) && false, _wgslsmith_f_op_f32(sign(var_1.c.x)) > _wgslsmith_f_op_f32(-183f + 618f)), select(vec2<bool>(arg_0, all(vec2<bool>(var_0.x, var_0.x))), vec2<bool>(any(vec3<bool>(var_1.b, var_1.b, false)), var_1.b), var_1.a)), vec2<bool>(true, true));
    let var_2 = func_2(~(~(~u_input.b.x)), var_1);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.e) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2232f, var_2.e.x), var_2.e, !vec2<bool>(func_4(var_2).a, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(!(all(vec4<bool>(true, true, true, true)) || true), all(vec4<bool>(any(vec2<bool>(true, true)), select(false, true, any(vec2<bool>(false, false))), true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2431f, -786f), vec2<f32>(-531f, 696f), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -289f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1329f, -1000f) - vec2<f32>(-300f, -249f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-325f, -131f)))))))), max(abs(select(1i, u_input.a, false)), -45845i) >> (_wgslsmith_add_u32(~u_input.b.x, 1u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-355f, -740f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(256f, 1632f))))))));
    global1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(firstTrailingBit(vec3<i32>(var_1.d, 4425i, u_input.a)), vec3<i32>(26175i, 2147483647i, u_input.a)), vec3<i32>(-1i, global1.x, u_input.a)), vec3<i32>(global0[_wgslsmith_index_u32(reverseBits(select(1u, u_input.b.x, var_1.a)), 11u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -2147483647i) << (vec3<u32>(u_input.b.x, 1u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-23468i, u_input.a, u_input.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16103i, var_1.d), vec3<i32>(-7550i, u_input.a, var_1.d)))) << (_wgslsmith_add_vec3_u32(max(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 79361u)) << (countOneBits(vec3<u32>(44358u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(52592u, u_input.b.x, 0u), vec3<u32>(0u, u_input.b.x, 54129u))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<u32>(10465u, 762u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x) & vec3<u32>(4294967295u, 0u, u_input.b.x), func_4(Struct_1(var_1.b, false, var_1.c, var_1.d, vec2<f32>(-875f, -655f))).b), firstTrailingBit(vec3<u32>(u_input.b.x, 27251u, u_input.b.x)))) % vec3<u32>(32u));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(exp2(var_1.c.x))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), -808f)));
    var_0 = false;
    var var_4 = vec3<bool>(true, var_1.a, func_2(62227u, var_1).b == false);
    let var_5 = var_4.yz;
    let var_6 = vec4<i32>(var_1.d, select(-abs(var_1.d) ^ var_1.d, -(_wgslsmith_mod_i32(u_input.a, global1.x) & (2147483647i | var_1.d)), all(!(!vec4<bool>(true, false, true, var_4.x)))), 37741i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.a >> (firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.b.x)) % 32u), max(~(~u_input.a), _wgslsmith_mult_i32(-18617i, 42160i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(388f, var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.e.x))), 1465f));
}

