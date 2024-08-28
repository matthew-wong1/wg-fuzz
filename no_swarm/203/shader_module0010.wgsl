struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32) -> i32 {
    global0 = arg_1.b;
    var var_0 = arg_1.b;
    var var_1 = arg_1;
    let var_2 = global0.b.b.zx;
    var_0 = Struct_2(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(74354i, var_0.a) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), select(vec2<i32>(var_1.b.a, 14750i), vec2<i32>(arg_1.b.a, global0.a), arg_0.x)), vec2<i32>(abs(arg_1.b.a), var_0.a)), var_1.a);
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, abs(global0.a), arg_1.b.a), ~(~reverseBits(-vec3<i32>(arg_1.b.a, -1i, var_1.b.a))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0.b.a), select(!vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x, global0.b.b.x), global0.b.b, select(select(vec4<bool>(false, false, global0.b.b.x, global0.b.b.x), vec4<bool>(true, global0.b.b.x, true, false), global0.b.b.x), select(global0.b.b, global0.b.b, vec4<bool>(false, global0.b.b.x, global0.b.b.x, true)), !vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x, global0.b.b.x)))), Struct_2(1i, Struct_1(global0.b.a, global0.b.b)));
    let var_1 = Struct_2(reverseBits(arg_1.x), var_0.a);
    global0 = var_0.b;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 725f), 1191f)), global0.b.b), Struct_2(func_3(var_1.b.b.xyy, Struct_3(Struct_1(var_0.b.b.a, var_1.b.b), Struct_2(-1i, Struct_1(var_0.a.a, var_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a * var_0.b.b.a))), var_1.b));
    var_0 = var_2;
    return _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-29861i, 1i)), arg_1), ~14200i >> ((abs(arg_2) ^ countOneBits(10121u)) % 32u)), var_0.b.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(arg_0.b.a, -1i) ^ 19231i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a, global0.a, global0.a), vec3<i32>(40524i, 1i, global0.a)), vec3<i32>(-55345i, 2147483647i, -2059i)), vec3<i32>(arg_0.b.a, arg_0.b.a, 11646i) >> (vec3<u32>(u_input.b, 1360u, u_input.a) % vec3<u32>(32u)))), vec2<i32>(-firstTrailingBit(-2147483647i), global0.a) ^ ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b.a, -55474i), vec2<i32>(global0.a, -46521i))), ~u_input.b);
    global0 = arg_0.b;
    global0 = arg_0.b;
    global0 = Struct_2(abs(_wgslsmith_sub_i32(1i, 1i)), Struct_1(global0.b.a, global0.b.b));
    global0 = Struct_2(-((_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, arg_0.b.a, global0.a, 0i), vec4<i32>(var_0, 1i, global0.a, -14070i)) >> (4294967295u % 32u)) | ~max(1i, global0.a)), arg_0.b.b);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) - arg_0.b.b.a), select(select(!global0.b.b, select(vec4<bool>(arg_1.x, global0.b.b.x, global0.b.b.x, arg_1.x), arg_0.b.b.b, arg_2), select(arg_2, global0.b.b, arg_0.a.b)), vec4<bool>(any(global0.b.b), false, true, select(true, true, arg_0.a.b.x)), select(arg_0.b.a <= var_0, arg_0.b.b.a >= global0.b.a, arg_1.x != true))), arg_0.b);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    global0 = Struct_2(-1i, arg_2.a);
    var var_0 = arg_2.b;
    var var_1 = vec4<u32>(1u, 4294967295u, 0u, _wgslsmith_sub_u32(13206u, abs(arg_0)));
    var var_2 = func_1(func_1(Struct_3(func_1(func_1(arg_2, vec2<bool>(false, true), vec4<bool>(true, false, false, false)), select(arg_2.a.b.xw, vec2<bool>(true, arg_1), true), select(vec4<bool>(true, true, false, arg_2.a.b.x), vec4<bool>(false, arg_2.a.b.x, true, true), vec4<bool>(false, false, true, global0.b.b.x))).a, func_1(func_1(arg_2, arg_2.b.b.b.ww, arg_2.a.b), !arg_3.b.b.wy, vec4<bool>(global0.b.b.x, false, true, false)).b), vec2<bool>(!any(vec2<bool>(arg_2.b.b.b.x, false)), func_1(func_1(Struct_3(global0.b, arg_2.b), vec2<bool>(true, var_0.b.b.x), vec4<bool>(arg_2.a.b.x, false, true, false)), vec2<bool>(false, false), var_0.b.b).b.b.b.x), !(!select(vec4<bool>(arg_3.b.b.x, global0.b.b.x, true, false), var_0.b.b, var_0.b.b.x))), arg_3.b.b.wx, vec4<bool>(arg_1, true, select(true, ~1u > _wgslsmith_clamp_u32(var_1.x, arg_0, 48491u), -450f != var_0.b.a), all(arg_3.b.b))).b.b.b.zz;
    var var_3 = firstLeadingBit(reverseBits(arg_3.a));
    return ~firstLeadingBit(8383u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.a == abs(u_input.a);
    let var_1 = 192f;
    let var_2 = firstTrailingBit(countOneBits(firstLeadingBit(arg_1)) ^ -vec2<i32>(global0.a, 2147483647i)) >> (vec2<u32>(abs(arg_0.x), 31868u) % vec2<u32>(32u));
    let var_3 = Struct_2(arg_1.x, func_1(func_1(Struct_3(func_1(Struct_3(Struct_1(1688f, global0.b.b), Struct_2(arg_2, global0.b)), vec2<bool>(true, true), vec4<bool>(global0.b.b.x, true, global0.b.b.x, false)).a, func_1(Struct_3(global0.b, Struct_2(-43195i, Struct_1(var_1, vec4<bool>(global0.b.b.x, global0.b.b.x, false, false)))), global0.b.b.wx, global0.b.b).b), vec2<bool>(false, global0.b.b.x), global0.b.b), func_1(func_1(func_1(Struct_3(Struct_1(global0.b.a, vec4<bool>(global0.b.b.x, false, global0.b.b.x, global0.b.b.x)), Struct_2(-50064i, Struct_1(global0.b.a, vec4<bool>(false, true, false, global0.b.b.x)))), vec2<bool>(true, false), vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x, true)), vec2<bool>(global0.b.b.x, global0.b.b.x), select(vec4<bool>(true, false, global0.b.b.x, global0.b.b.x), vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x, true), true)), vec2<bool>(true, true), !global0.b.b).a.b.xw, func_1(func_1(func_1(Struct_3(global0.b, Struct_2(global0.a, Struct_1(var_1, vec4<bool>(global0.b.b.x, false, global0.b.b.x, global0.b.b.x)))), global0.b.b.xx, global0.b.b), select(global0.b.b.zz, global0.b.b.yx, global0.b.b.yz), select(global0.b.b, vec4<bool>(false, false, global0.b.b.x, false), global0.b.b)), global0.b.b.yz, vec4<bool>(true, true, all(global0.b.b.xzz), true)).a.b).b.b);
    global0 = func_1(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f + var_1)), global0.b.b), Struct_2(global0.a, func_1(func_1(Struct_3(var_3.b, var_3), global0.b.b.yz, global0.b.b), global0.b.b.yx, !vec4<bool>(true, true, var_3.b.b.x, false)).a)), select(select(!global0.b.b.ww, !select(vec2<bool>(false, true), vec2<bool>(true, false), true), u_input.a != 6799u), select(select(vec2<bool>(global0.b.b.x, global0.b.b.x), select(var_3.b.b.yz, var_3.b.b.zy, false), global0.b.b.ww), vec2<bool>(false, true), vec2<bool>(true, false)), true), var_3.b.b).b;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(-min(i32(-1i) * -2147483647i, global0.a), func_5(vec3<u32>(func_4(0u & u_input.a, global0.b.b.x, func_1(Struct_3(global0.b, Struct_2(global0.a, Struct_1(global0.b.a, global0.b.b))), vec2<bool>(global0.b.b.x, false), vec4<bool>(false, global0.b.b.x, false, true)), func_1(Struct_3(global0.b, Struct_2(global0.a, Struct_1(global0.b.a, global0.b.b))), global0.b.b.zy, global0.b.b).b), u_input.a, 31993u), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(global0.a, -22878i) ^ vec2<i32>(-1i, -27976i)), reverseBits(reverseBits(vec2<i32>(global0.a, global0.a)))), -13044i));
    var var_0 = max(_wgslsmith_sub_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(22428u, u_input.a), vec2<u32>(u_input.b, 4294967295u))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 32666u), vec2<u32>(47554u, u_input.b)), vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.b, 4294967295u))), max(vec2<u32>(0u, u_input.a), vec2<u32>(reverseBits(firstLeadingBit(4294967295u)), 4294967295u)));
    var var_1 = vec4<bool>(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, 18444u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, u_input.a), vec2<u32>(u_input.a, u_input.b), vec2<u32>(4294967295u, u_input.b)), !global0.b.b.x), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.a, var_0.x), vec2<u32>(25791u, u_input.b)), ~vec2<u32>(var_0.x, u_input.b))) < ~(var_0.x ^ 88331u), false, func_1(func_1(func_1(Struct_3(global0.b, Struct_2(global0.a, Struct_1(global0.b.a, global0.b.b))), !vec2<bool>(global0.b.b.x, true), vec4<bool>(false, true, false, true)), vec2<bool>(func_1(Struct_3(Struct_1(-1673f, vec4<bool>(false, global0.b.b.x, false, false)), Struct_2(-19726i, global0.b)), vec2<bool>(global0.b.b.x, global0.b.b.x), global0.b.b).a.b.x, false), vec4<bool>(true, true, global0.b.b.x, global0.b.b.x)), vec2<bool>(false, true), vec4<bool>(5846u == ~var_0.x, true, true, true)).b.b.b.x, global0.b.b.x);
    var var_2 = true;
    var var_3 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(-global0.b.a), global0.b.b));
    var var_4 = !func_5(select(vec3<u32>(_wgslsmith_sub_u32(var_0.x, 10447u), reverseBits(var_0.x), var_0.x), ~select(vec3<u32>(4294967295u, 48163u, 10134u), vec3<u32>(1u, var_0.x, 1u), var_1.x), global0.b.b.wwy), vec2<i32>(var_3.a << (u_input.a % 32u), ~var_3.a) >> (firstTrailingBit(~vec2<u32>(48524u, 107840u)) % vec2<u32>(32u)), var_3.a).b;
    var var_5 = func_1(func_1(Struct_3(global0.b, Struct_2(_wgslsmith_mult_i32(global0.a, var_3.a), Struct_1(global0.b.a, var_3.b.b))), vec2<bool>(u_input.a <= _wgslsmith_mult_u32(56349u, var_0.x), true), global0.b.b), select(vec2<bool>(!global0.b.b.x, var_1.x), vec2<bool>(func_1(func_1(Struct_3(Struct_1(-1000f, global0.b.b), Struct_2(0i, var_3.b)), vec2<bool>(var_3.b.b.x, false), vec4<bool>(false, true, true, false)), !vec2<bool>(var_3.b.b.x, var_3.b.b.x), var_3.b.b).b.b.b.x, all(func_5(vec3<u32>(u_input.b, var_0.x, u_input.a), vec2<i32>(-1i, var_3.a), -1i).b.yy)), func_5(abs(vec3<u32>(u_input.a, 1u, 4294967295u)), firstLeadingBit(~vec2<i32>(global0.a, -4632i)), -11599i).b.yy), select(vec4<bool>(all(func_5(vec3<u32>(var_0.x, 1u, u_input.b), vec2<i32>(global0.a, global0.a), -38631i).b), !var_1.x & true, func_1(Struct_3(global0.b, Struct_2(var_3.a, global0.b)), vec2<bool>(true, true), global0.b.b).b.b.b.x, !any(vec3<bool>(var_1.x, var_4.x, false))), global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(562f, -2977f)) * _wgslsmith_f_op_f32(f32(-1f) * -1883f)) <= _wgslsmith_f_op_f32(-func_5(vec3<u32>(124410u, 1u, u_input.a), vec2<i32>(23026i, global0.a), -23721i).a)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-1i & (-global0.a << (4294967295u % 32u))), vec3<i32>(var_5.b.a, firstTrailingBit(-528i), -32140i));
}

