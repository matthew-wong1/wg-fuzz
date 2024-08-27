struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = any(!(!vec2<bool>(!arg_1.a.a, true)));
    var_0 = !all(vec3<bool>(false, true, any(!vec4<bool>(true, arg_2.b, arg_1.a.a, true))));
    var var_1 = !all(vec3<bool>(true, any(!vec3<bool>(false, arg_1.a.b, true)), arg_1.a.b));
    let var_2 = min(-41031i, u_input.a.x);
    var_0 = any(vec2<bool>(arg_1.a.b, arg_1.a.b));
    return arg_1.b.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    var var_1 = vec3<u32>(~(~(~_wgslsmith_mod_u32(1u, 4294967295u))), _wgslsmith_mult_u32(~1u, min(~_wgslsmith_mult_u32(20818u, 37142u), 1u)), 1u);
    var_1 = ~vec3<u32>(var_1.x, var_1.x, func_3(u_input.a.x, Struct_2(Struct_1(var_0, var_0, vec2<f32>(-640f, -198f), vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(-608f, -373f, -570f, -878f)), vec3<u32>(var_1.x, 58143u, 0u)), Struct_1(false, false, vec2<f32>(-1000f, -1679f), u_input.a.zy, vec4<f32>(302f, -1377f, 256f, -652f)))) << (firstTrailingBit(~(vec3<u32>(0u, 65077u, var_1.x) >> ((vec3<u32>(var_1.x, var_1.x, 48180u) >> (vec3<u32>(23276u, var_1.x, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(max(~var_1.x, 1u), ~var_1.x), 34727u, ~func_3(u_input.a.x, Struct_2(Struct_1(true, var_0, vec2<f32>(-264f, 727f), vec2<i32>(2147483647i, 30267i), vec4<f32>(354f, -462f, -1204f, -110f)), vec3<u32>(39319u, 4294967295u, 0u)), Struct_1(true, true, vec2<f32>(1260f, 1000f), vec2<i32>(27589i, u_input.a.x), vec4<f32>(812f, 801f, -954f, 1070f)))), vec3<u32>(1u, min(var_1.x, var_1.x), ~(var_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, 1u), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x)) % 32u))));
    let var_2 = Struct_1(all(select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), vec2<bool>(true & var_0, 18850i < u_input.a.x))), -15880i >= reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(92410i, u_input.a.x, -40694i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-146f, -1885f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, -544f) - vec2<f32>(-663f, -165f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 726f)))))), abs(firstTrailingBit(vec2<i32>(u_input.a.x, 24146i ^ u_input.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, 399f, -1063f, 554f) * vec4<f32>(1000f, -1000f, 545f, -616f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-603f + -1246f), -1505f, _wgslsmith_f_op_f32(round(-1097f)), _wgslsmith_f_op_f32(sign(122f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-197f)), 136f, -701f, -229f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(max(1298f, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(f32(-1f) * -468f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - var_2.e.x)))), ~1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(56351u, var_1.x, 1u), abs(vec3<u32>(4403u, 97751u, 4294967295u))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2())));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -1159f, 238f) - vec4<f32>(var_0.x, var_0.x, -231f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))))))), firstLeadingBit(firstTrailingBit(vec3<i32>(select(u_input.a.x, 2147483647i, true), firstLeadingBit(arg_0.x), max(u_input.a.x, 2147483647i)))), ~(~vec3<u32>(1u, ~15043u, 4294967295u)), 663f, vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1804f * var_0.x) + var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), -496f)), _wgslsmith_f_op_f32(f32(-1f) * -1396f), -1016f));
    let var_2 = vec3<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, all(vec2<bool>(true, false)), true))), true);
    let var_3 = firstLeadingBit(~(~(~select(vec4<i32>(-51075i, 29459i, u_input.a.x, -1i), vec4<i32>(19701i, arg_0.x, u_input.a.x, 1i), false))));
    var var_4 = var_1.c.x;
    return Struct_1(any(var_2), ~1i <= var_1.b.x, var_0, countOneBits(-countOneBits(vec2<i32>(0i, 2147483647i) | vec2<i32>(u_input.a.x, var_1.b.x))), var_1.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(arg_3.b.x, arg_3.b.x);
    var_0 = vec2<u32>(func_3(min(~arg_3.a.d.x, 1i), arg_0, Struct_1(true, true, _wgslsmith_f_op_vec2_f32(-arg_3.a.c), u_input.a.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1152f, arg_3.a.e.x, 1000f) * arg_3.a.e))) | firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 16725u), vec2<u32>(arg_0.b.x, 0u)), 0u)), 36548u);
    var var_1 = arg_0.b.x;
    var_1 = abs(1u);
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, (arg_0.b.x >> (arg_3.b.x % 32u)) >> (~46070u % 32u)), select(arg_0.b.xx, vec2<u32>(abs(arg_3.b.x), ~44216u), (arg_1.x & false) && arg_3.a.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(func_1(u_input.a), ~vec3<u32>(0u, 1u, ~4294967295u)), select(vec3<bool>(!select(true, false, true), true, all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec3<bool>(false, true, true)), true), any(vec4<bool>(true, true, true, true))), true), ~_wgslsmith_clamp_i32(2147483647i, 1i, 1i), Struct_2(Struct_1(true, -u_input.a.x >= u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, 257f)), ~_wgslsmith_clamp_vec2_i32(u_input.a.xx, u_input.a.yx, u_input.a.xy), vec4<f32>(-1278f, -1041f, 934f, -994f)), vec3<u32>(~(~70710u), 0u, firstLeadingBit(countOneBits(4294967295u)))));
    var var_1 = !vec4<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(var_0.a.b, var_0.a.b), true)), var_0.a.a, all(vec3<bool>(false, all(vec4<bool>(var_0.a.a, false, false, true)), var_0.a.a || true)), !(true | (var_0.a.e.x < 508f)));
    var var_2 = -u_input.a.xx;
    let var_3 = ((_wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_2.x, u_input.a.x), vec3<i32>(var_2.x, 40502i, 65421i), vec3<i32>(var_2.x, var_0.a.d.x, 19049i))) >> ((vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x) | abs(vec3<u32>(var_0.b.x, 15553u, 37219u))) % vec3<u32>(32u))) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(8629u, 18624u, 30926u), _wgslsmith_div_vec3_u32(vec3<u32>(10454u, var_0.b.x, 4294967295u), var_0.b)) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, 15370u, var_0.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 101979u, var_0.b.x), vec3<u32>(4294967295u, var_0.b.x, var_0.b.x))), ~(~abs(vec3<u32>(30432u, 6203u, var_0.b.x)))) % vec3<u32>(32u));
    var_2 = -var_3.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(28432u, 101370u, 63788u), var_0.b >> (vec3<u32>(var_0.b.x, var_0.b.x, 35903u) % vec3<u32>(32u))), vec3<u32>(var_0.b.x >> (23764u % 32u), var_0.b.x, var_0.b.x) & reverseBits(~var_0.b)), 4294967295u);
}

