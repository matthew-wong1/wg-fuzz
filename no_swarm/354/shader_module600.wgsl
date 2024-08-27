struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(21991u, 7725u), min(23219u, 4294967295u)), ~(~1u)), vec4<u32>(~(~global0.x), ~26939u, firstLeadingBit(~u_input.a), global0.x), vec4<bool>(true, true, true, true), (~4294967295u ^ global0.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(u_input.a, global0.x)), global0.x), Struct_3(Struct_1(global0.xz, vec4<u32>(reverseBits(u_input.a), ~4294967295u, ~30469u, ~u_input.a), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), 1u, u_input.b), Struct_2(true, Struct_1(_wgslsmith_add_vec2_u32(global0.yy, global0.yx), select(vec4<u32>(global0.x, u_input.a, 0u, 44427u), vec4<u32>(113804u, global0.x, 4294967295u, 1u), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), abs(global0.x), global0.x), 2147483647i)));
    var var_1 = Struct_5(Struct_3(var_0.b.a, Struct_2(var_0.a.c.x, Struct_1(select(vec2<u32>(u_input.b, 27305u), var_0.a.a, var_0.a.c.zx), var_0.a.b, !var_0.b.b.b.c, reverseBits(1u), 1u), firstLeadingBit(u_input.c) ^ _wgslsmith_mult_i32(var_0.b.b.c, -3354i))), 1f);
    var_0 = Struct_4(var_0.a, Struct_3(var_1.a.b.b, Struct_2(false, Struct_1(var_0.b.a.b.xx, vec4<u32>(73370u, 0u, 1u, u_input.b) << (vec4<u32>(var_0.a.a.x, 0u, 23480u, global0.x) % vec4<u32>(32u)), vec4<bool>(var_1.a.b.b.c.x, var_0.b.a.c.x, true, true), var_0.a.a.x, 30204u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.a.b.c, 35193i, -30928i), vec4<i32>(var_1.a.b.c, u_input.c, -1i, var_0.b.b.c)))));
    var var_2 = Struct_2(var_0.a.c.x && false, Struct_1(min(~select(vec2<u32>(1u, u_input.b), global0.xz, var_1.a.a.c.yz), ~(vec2<u32>(global0.x, 0u) | global0.zy)), countOneBits(countOneBits(~var_0.b.b.b.b)), vec4<bool>(!var_1.a.a.c.x, select(true, select(true, false, true), var_1.a.b.b.c.x), !select(false, var_0.b.b.a, var_1.a.a.c.x), var_1.a.a.c.x), ~var_1.a.a.b.x, abs(select(_wgslsmith_add_u32(global0.x, u_input.a), 0u, all(var_1.a.a.c.xyy)))), -28432i);
    var_1 = Struct_5(var_0.b, global1.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(2220f + -1094f), _wgslsmith_div_f32(247f, global1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-799f, 1000f, -711f), vec3<f32>(-479f, 592f, global1.x))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, var_1.b, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, global1.x, global1.x))))))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, -199f, -188f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, 501f)))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1789f), _wgslsmith_div_f32(-484f, 2414f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(544f, global1.x))))), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, arg_2), arg_2))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.xx);
    var var_1 = abs(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(27387i, 22407i, 0i, -2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 1i, u_input.c, 23637i), -vec4<i32>(arg_1, arg_1, u_input.c, u_input.c)), ~select(vec4<i32>(2147483647i, u_input.c, 0i, u_input.c), vec4<i32>(-19007i, arg_1, u_input.c, -22173i), vec4<bool>(arg_2, arg_2, true, false))));
    let var_2 = 10981i;
    var var_3 = 993f;
    return min(_wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_1.x, -6396i), var_1.yxx), -var_1.x, 30755i), var_1.xwx >> (select(vec3<u32>(arg_0, 3506u, u_input.a), vec3<u32>(global0.x, arg_0, arg_0) & vec3<u32>(u_input.b, 404u, 0u), 23042i <= u_input.c) % vec3<u32>(32u))), vec3<i32>(41576i, ~u_input.c, var_1.x));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(u_input.c, -abs(u_input.c), 16229i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.x), vec2<u32>(global0.x, u_input.b)) % 32u));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~(-(~vec3<i32>(var_0.x, var_0.x, -40770i))), _wgslsmith_sub_vec3_i32(func_2(~u_input.b, var_0.x, true), firstTrailingBit(-vec3<i32>(u_input.c, var_0.x, 2147483647i)))), vec3<i32>(u_input.c, var_0.x, _wgslsmith_add_i32(0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 24223u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.a, 4294967295u, global0.x)) % 32u), 2679i)));
    var var_1 = !vec3<bool>(false, false, !arg_0);
    var_0 = select(vec3<i32>(-1i) * -(-vec3<i32>(-1i, u_input.c, -75071i) >> (vec3<u32>(u_input.a, global0.x, global0.x) % vec3<u32>(32u))), -select(~vec3<i32>(10587i, 2147483647i, -55299i) << (vec3<u32>(global0.x, global0.x, 1u) % vec3<u32>(32u)), (vec3<i32>(1i, u_input.c, var_0.x) ^ vec3<i32>(-2499i, -1i, -1i)) >> (~vec3<u32>(62984u, u_input.a, 10822u) % vec3<u32>(32u)), vec3<bool>(true, arg_0, true)), true);
    var_0 = abs(~abs(vec3<i32>(22690i, -35315i, 9505i)) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-53901i, u_input.c, 24054i), vec3<i32>(-2147483647i, -2147483647i, -56748i)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-20009i, var_0.x, -2147483647i)), min(vec3<i32>(2147483647i, -6801i, var_0.x), vec3<i32>(var_0.x, var_0.x, 1i)))));
    return Struct_3(Struct_1(select(global0.zz, ~(~global0.yx), any(select(vec4<bool>(true, false, var_1.x, arg_0), vec4<bool>(true, arg_0, var_1.x, true), arg_0))), ~select(vec4<u32>(global0.x, u_input.b, 0u, 23604u) & vec4<u32>(u_input.b, u_input.b, u_input.a, global0.x), firstLeadingBit(vec4<u32>(88755u, 4294967295u, u_input.a, 1u)), true), select(!select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), vec4<bool>(false, arg_0, arg_0, true), !(!vec4<bool>(arg_0, true, false, false))), global0.x, _wgslsmith_sub_u32(4294967295u, countOneBits(global0.x << (42432u % 32u)))), Struct_2(all(select(!vec3<bool>(arg_0, true, false), !vec3<bool>(arg_0, arg_0, true), false)), Struct_1(global0.zy, abs(vec4<u32>(8281u, global0.x, global0.x, global0.x)) | select(vec4<u32>(1u, u_input.a, global0.x, 0u), vec4<u32>(0u, 33462u, 8849u, 4294967295u), var_1.x), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, arg_0), vec4<bool>(true, var_1.x, var_1.x, arg_0)), select(vec4<bool>(false, var_1.x, false, arg_0), vec4<bool>(arg_0, arg_0, true, false), true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, true, false), var_1.x)), 1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3931u, 1u), vec3<u32>(u_input.b, 0u, 1u)))), ~_wgslsmith_add_i32(1i, ~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.a, global0.x, max(~(~93469u), u_input.b), 9165u);
    var var_1 = Struct_5(func_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(154f))) * global1.x));
    var_1 = Struct_5(var_1.a, var_1.b);
    let var_2 = vec3<bool>(false | (var_1.b <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * _wgslsmith_f_op_f32(f32(-1f) * -257f))), false, any(select(select(vec4<bool>(var_1.a.a.c.x, var_1.a.b.b.c.x, false, var_1.a.b.a), var_1.a.a.c, var_1.a.a.c.x && var_1.a.b.b.c.x), select(!vec4<bool>(true, var_1.a.b.a, var_1.a.b.a, var_1.a.b.b.c.x), select(var_1.a.a.c, vec4<bool>(var_1.a.a.c.x, true, var_1.a.b.a, var_1.a.a.c.x), var_1.a.a.c.x), all(var_1.a.b.b.c.wy)), var_1.a.b.b.c)));
    var var_3 = all(var_1.a.b.b.c.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true == any(var_2)).b.b.d << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(45116u, 1u), ~(0u << (1u % 32u))) % 32u), countOneBits(vec2<i32>(firstTrailingBit(u_input.c), 1i)) >> (min(global0.zy, ~abs(global0.zz)) % vec2<u32>(32u)), min(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(var_1.a.b.c, 11888i)), firstLeadingBit(u_input.c ^ 0i)));
}

