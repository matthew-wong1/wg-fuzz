struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1195f;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), vec4<i32>(0i, 18783i, -34087i, 12480i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), vec4<i32>(6366i, 1i, 13478i, -33151i), vec4<i32>(-3076i, 3515i, 65007i, 2092i), vec4<i32>(18987i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(22127i, 0i, -1i, -21096i), vec4<i32>(2147483647i, 0i, -22235i, -41079i), vec4<i32>(43269i, -1i, 14140i, 1i), vec4<i32>(27826i, i32(-2147483648), 30667i, 1i), vec4<i32>(5478i, 33477i, 324i, i32(-2147483648)), vec4<i32>(49254i, 81975i, 2147483647i, 2147483647i), vec4<i32>(-21452i, i32(-2147483648), -7484i, -60404i), vec4<i32>(1i, -42165i, 32322i, -24126i), vec4<i32>(i32(-2147483648), 8713i, -1i, -49215i), vec4<i32>(21579i, -112077i, -25551i, -34239i), vec4<i32>(i32(-2147483648), 54199i, -13853i, 0i), vec4<i32>(62829i, 2147483647i, 4131i, -18267i), vec4<i32>(-36305i, -18780i, 3599i, i32(-2147483648)), vec4<i32>(-3841i, -47627i, -1i, 1i), vec4<i32>(0i, -13751i, -1i, -58798i));

var<private> global2: vec3<i32> = vec3<i32>(-25681i, 11521i, -1i);

var<private> global3: vec3<i32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32) -> u32 {
    global3 = abs(vec3<i32>(-select(_wgslsmith_clamp_i32(-35545i, u_input.c.x, u_input.c.x), max(u_input.c.x, u_input.d.x), arg_0 < 975f), -1i, _wgslsmith_sub_i32(global2.x | 17246i, -6724i) << (1u % 32u)));
    var var_0 = abs(u_input.a << ((firstTrailingBit(~19788u) ^ u_input.b) % 32u));
    let var_1 = Struct_1((vec3<i32>(_wgslsmith_div_i32(global3.x, global2.x), -26331i, -24847i) & vec3<i32>(_wgslsmith_mult_i32(global2.x, 13830i), i32(-1i) * -42549i, global3.x)) & ~(~select(u_input.c, u_input.c, vec3<bool>(true, false, false))), vec4<i32>(-1i >> (~_wgslsmith_mult_u32(108107u, u_input.b) % 32u), -53796i, global3.x, max(u_input.c.x, ~(~6937i))));
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 51219u, u_input.a), vec4<u32>(u_input.b, u_input.a, 54809u, 1u)), firstLeadingBit(vec4<u32>(4294967295u, 2317u, u_input.a, 32175u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b)), ~(vec4<u32>(u_input.b, u_input.a, 4294967295u, 0u) >> (vec4<u32>(5973u, u_input.b, 1u, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(max(select(~4294967295u, u_input.b, true), u_input.a), 115515u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, u_input.a, 16229u), vec3<u32>(28238u, u_input.a, 19801u), false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(53904u, 4294967295u, 17142u))), firstLeadingBit(~vec3<u32>(20619u, 7256u, 506u))), ~_wgslsmith_mult_u32(min(u_input.a, 4294967295u), _wgslsmith_div_u32(u_input.a, u_input.a))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = Struct_1(select(_wgslsmith_add_vec3_i32(~u_input.c, vec3<i32>(~0i, firstLeadingBit(-1i), -global2.x)), vec3<i32>(1i, -6403i, 1i) & ~vec3<i32>(global3.x, 2147483647i, global2.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), true)), min(global1[_wgslsmith_index_u32(u_input.b, 21u)], vec4<i32>(firstTrailingBit(-arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(2526i, global3.x)) | firstLeadingBit(global2.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, arg_0), vec4<i32>(global2.x, 33947i, -2147483647i, global3.x))), -24641i)));
    global0 = 703f;
    let var_1 = !vec4<bool>(true, select(all(vec4<bool>(true, true, false, true)), false, true), true, true);
    var_0 = Struct_1(-(max(u_input.c, u_input.c) | var_0.b.wyx), -vec4<i32>(u_input.c.x, firstTrailingBit(-16248i) >> (1u % 32u), -6213i, ~1i));
    let var_2 = Struct_1(-(-vec3<i32>(34399i, var_0.a.x, var_0.a.x) >> (select(vec3<u32>(arg_1, arg_1, u_input.b), vec3<u32>(arg_1, 9229u, u_input.b), false) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, _wgslsmith_mult_u32(select(1u, u_input.a, var_1.x), ~arg_1), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 4294967295u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(21319u, arg_1, 4294967295u, 1u), vec4<u32>(80737u, 4294967295u, u_input.b, 3823u)))) % vec3<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(1i, countOneBits(~global2.x)), -2147483647i, u_input.c.x, reverseBits(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(arg_0, var_0.b.x))) | (1i & u_input.c.x)));
    return _wgslsmith_dot_vec2_u32(max(~(~(~vec2<u32>(arg_1, arg_1))), countOneBits(firstTrailingBit(vec2<u32>(1u, u_input.b))) & (~vec2<u32>(1u, 4294967295u) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(3908u, u_input.a)))), min(reverseBits(firstLeadingBit(vec2<u32>(u_input.b, 58608u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(4294967295u, arg_1), vec2<u32>(26214u, 0u))), vec2<u32>(reverseBits(abs(1u)), arg_1)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(490f)), -1235f)))));
    let var_0 = arg_2;
    let var_1 = func_4(var_0.a.x >> (func_3(_wgslsmith_f_op_f32(-1010f + _wgslsmith_f_op_f32(min(512f, 1074f)))) % 32u), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -724f), -774f, arg_1))));
    let var_2 = Struct_1(-var_0.b.wzw, select(~(~vec4<i32>(-1i, 18447i, arg_2.a.x, global2.x)), firstTrailingBit(abs(abs(vec4<i32>(arg_2.b.x, arg_0, 17485i, global3.x)))), vec4<bool>((i32(-1i) * -1i) > _wgslsmith_mult_i32(arg_2.a.x, -8864i), !all(vec3<bool>(arg_3.x, arg_3.x, true)), arg_1, !select(false, true, false))));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global3.x, u_input.c.x), -arg_0, i32(-1i) * -63820i, i32(-1i) * -10i), arg_2.b), i32(-1i) * -2147483647i, abs(_wgslsmith_add_i32(arg_0, global2.x))), firstTrailingBit((max(var_2.b, var_2.b) | arg_2.b) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, var_1, 0u), reverseBits(vec4<u32>(u_input.b, 0u, var_1, 0u))) % vec4<u32>(32u))));
    return _wgslsmith_dot_vec2_i32(~u_input.c.xz, firstTrailingBit(-var_0.a.yy | -(vec2<i32>(2147483647i, var_0.b.x) ^ vec2<i32>(var_2.b.x, 0i))));
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.b.zzy;
    let var_1 = vec4<bool>(all(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), var_0.x < -30410i, true, false);
    let var_2 = select((abs(u_input.b) & ~(53512u >> (1u % 32u))) >= ~(~u_input.b), !any(!var_1.zzy) | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2277f), _wgslsmith_f_op_f32(sign(2109f))) < _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -114f))), true);
    var var_3 = Struct_1(abs(vec3<i32>(global3.x, u_input.c.x, -1i)), (vec4<i32>(-1i, global2.x & 1i, _wgslsmith_div_i32(var_0.x, global2.x), -var_0.x) | _wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.d.x, u_input.c.x, -1i), arg_0.b)) << ((vec4<u32>(u_input.a, 1u, ~36144u, _wgslsmith_mod_u32(52131u, u_input.b)) | firstLeadingBit(firstLeadingBit(vec4<u32>(17868u, 0u, u_input.b, 14898u)))) % vec4<u32>(32u)));
    var var_4 = Struct_1(arg_0.b.zwx, vec4<i32>(i32(-1i) * -1i, arg_0.a.x, -50287i, 14677i) | ((max(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]) | ~global1[_wgslsmith_index_u32(u_input.b, 21u)]) & arg_0.b));
    return !(!var_1);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> i32 {
    global1 = array<vec4<i32>, 21>();
    var var_0 = ~u_input.b;
    var var_1 = arg_1;
    var var_2 = ~firstTrailingBit(global2.yx);
    let var_3 = func_5(Struct_1(~vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, -104634i), ~global2.x, global2.x & var_2.x), vec4<i32>(reverseBits(-u_input.d.x), max(global3.x, global2.x ^ -1i), min(2147483647i, global3.x), _wgslsmith_div_i32(func_2(global2.x, true, Struct_1(vec3<i32>(u_input.c.x, u_input.d.x, -1i), vec4<i32>(23737i, global3.x, var_2.x, -1i)), vec3<bool>(false, false, true)), abs(29985i)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, _wgslsmith_sub_i32(~min(-2147483647i, global3.x), _wgslsmith_div_i32(-34241i, _wgslsmith_mod_i32(var_2.x, global2.x))), global2.x, -151i), vec4<i32>(_wgslsmith_mod_i32(~max(global3.x, -2524i), _wgslsmith_sub_i32(22684i, global2.x)), 33991i, ~(-(~(-2147483647i))), _wgslsmith_sub_i32(-(~u_input.c.x), firstLeadingBit(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(-select(vec3<i32>(u_input.c.x, 0i, global2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1480i, -1i, global3.x), u_input.c), true), vec3<i32>(-28664i, 21784i & u_input.c.x, -global3.x)), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 21u)]));
    var var_1 = vec4<i32>(1i, max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.xy, select(var_0.a.yz, u_input.c.xy, vec2<bool>(true, true))), max(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(40563i, u_input.d.x), vec2<i32>(var_0.b.x, global3.x)))), u_input.d.x), firstTrailingBit(countOneBits(var_0.b.x)), 1i);
    let var_2 = -select(vec4<i32>(max(-2147483647i, ~(-26153i)), _wgslsmith_sub_i32(i32(-1i) * -24861i, func_1(vec4<u32>(1u, 4294967295u, u_input.a, u_input.b), -1000f, -1159f)), 58776i, ~(-1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, ~42193i, -var_0.a.x, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 0i, 23642i, global3.x), vec4<i32>(u_input.c.x, -2147483647i, -112919i, var_0.b.x))), _wgslsmith_mod_i32(global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, -71376i), vec3<i32>(global2.x, global2.x, var_0.a.x))) != var_1.x);
    var var_3 = 1425f;
    let var_4 = -firstLeadingBit(-1i);
    var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~reverseBits(var_4), i32(-1i) * -55090i, countOneBits(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(var_2.wy, vec2<i32>(-14343i, var_2.x)), 0i)), ~(-24292i)), vec4<i32>(min(var_0.a.x, 0i), u_input.d.x | _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.x, var_0.b.x), ~var_0.b.x), (i32(-1i) * -1i) ^ _wgslsmith_mod_i32(var_1.x, global3.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 31520u, 32644u, ~22811u >> (u_input.a % 32u)) << (~(firstLeadingBit(vec4<u32>(49058u, 3838u, u_input.b, u_input.a)) | (vec4<u32>(1u, 1u, 1u, u_input.b) << (vec4<u32>(4294967295u, 572u, u_input.a, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), 26883u);
}

