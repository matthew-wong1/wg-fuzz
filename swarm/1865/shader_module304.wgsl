struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_1(true);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -892f)))), arg_0.b, !((arg_0.c || arg_0.e) | false), arg_0.d, !((arg_0.c & true) | false));
    let var_1 = Struct_1(all(!(!select(var_0.d, vec4<bool>(false, true, true, true), false))));
    var var_2 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(1i, 2147483647i, 1i, 27584i)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, 46652i, 0i), vec4<i32>(33108i, -1i, 2147483647i, -1i)), select(vec4<i32>(0i, var_0.b, arg_0.b, 2147483647i), vec4<i32>(-2147483647i, 28830i, 2147483647i, u_input.a), global0.a))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, -18496i, 19590i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(3640i, 12190i, 0i, var_0.b), vec4<i32>(u_input.a, -21730i, -1i, arg_0.b), vec4<i32>(-2147483647i, 2147483647i, 40210i, arg_0.b))))), select(~((vec4<i32>(2147483647i, -52524i, -1i, 21784i) | vec4<i32>(1i, arg_0.b, u_input.a, u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, var_0.b), vec4<i32>(2147483647i, arg_0.b, -1437i, 1i))), _wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, var_0.b, -2147483647i), vec4<i32>(39113i, 36946i, -1i, u_input.a))), firstTrailingBit(vec4<i32>(10265i, 2147483647i, arg_0.b, 47265i))), !var_0.d));
    var var_3 = ~72265u;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = abs(vec3<i32>(_wgslsmith_mult_i32(19368i, abs(_wgslsmith_sub_i32(-2147483647i, u_input.a))), _wgslsmith_sub_i32(-u_input.a, u_input.a), max(-u_input.a, _wgslsmith_sub_i32(~1i, min(-24146i, -13882i)))));
    let var_1 = Struct_1(!select(select(arg_1.x, global0.a, false) || (true | arg_1.x), func_3(Struct_2(vec2<f32>(arg_2, 1000f), u_input.a, arg_0, vec4<bool>(arg_0, arg_1.x, global0.a, arg_0), arg_1.x)), arg_1.x));
    let var_2 = arg_1.yz;
    var_0 = vec3<i32>(~(select(-2916i, -u_input.a, 2147483647i < u_input.a) & ~var_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, -2147483647i)), ~(var_0.yz & var_0.zx)), countOneBits(~_wgslsmith_add_i32(var_0.x, 1i))), firstLeadingBit(-_wgslsmith_mult_i32(var_0.x, -2147483647i)));
    global0 = Struct_1(!all(select(arg_1.xz, vec2<bool>(true, false), true)));
    return var_0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<i32>(1i, u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 31926i, min(u_input.a, u_input.a), -u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, 1i, 39727i) ^ vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_1 = vec2<i32>(min(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a, var_0.x, var_0.x, -30444i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 20652u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 46721u)) % vec4<u32>(32u)), vec4<i32>(u_input.a ^ -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_0.x, var_0.x)), -38089i, ~var_0.x)), ~(~(-2147483647i))), _wgslsmith_mult_i32(~(~var_0.x) << (4169u % 32u), -2147483647i));
    var_0 = vec2<i32>(firstLeadingBit(-2147483647i), ~1i);
    var var_2 = _wgslsmith_clamp_vec2_i32((firstLeadingBit(max(vec2<i32>(u_input.a, -34484i), var_1)) | (var_1 ^ -var_1)) >> (select(u_input.b.ww, ~u_input.b.wz, global0.a && true) % vec2<u32>(32u)), vec2<i32>(var_1.x, select(-18421i, countOneBits(-var_0.x), false)), select(min(_wgslsmith_clamp_vec2_i32(var_1, abs(vec2<i32>(var_1.x, var_1.x)), var_1 ^ vec2<i32>(u_input.a, 0i)), var_1), var_1, select(select(vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, true), true), select(select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.a), true), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    var var_3 = select(func_4(all(select(!vec2<bool>(global0.a, false), vec2<bool>(global0.a, true), vec2<bool>(global0.a, global0.a))), vec4<bool>(false, func_3(Struct_2(vec2<f32>(1079f, -2498f), 8007i, global0.a, vec4<bool>(global0.a, false, global0.a, false), true)), false, true), _wgslsmith_div_f32(259f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 641f)))), ~firstTrailingBit(u_input.b.ywy)), ~(u_input.a | u_input.a), true);
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-206f * 717f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-414f, 671f)))))), ~_wgslsmith_clamp_i32(2147483647i, var_1.x, ~(~2147483647i)), true, !select(!(!vec4<bool>(false, false, global0.a, global0.a)), !select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(global0.a, true, true, true), global0.a), true), !global0.a);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_mod_vec2_i32(~(~select(vec2<i32>(73678i, 17092i), vec2<i32>(-1i, var_0.b), var_0.e)), vec2<i32>(~(~firstLeadingBit(u_input.a)), -18240i));
    global0 = Struct_1(global0.a & global0.a);
    let var_2 = Struct_1(global0.a);
    var_1 = min(-reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_0.b), vec2<i32>(34452i, 39728i)) >> ((u_input.c << (vec2<u32>(u_input.c.x, 1947u) % vec2<u32>(32u))) % vec2<u32>(32u))), firstTrailingBit(countOneBits(~(~vec2<i32>(1i, -1i)))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global0 = Struct_1((arg_1.a.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_0.a.x * 902f))) & true);
    let var_0 = ~arg_1.b;
    var var_1 = (arg_2 << (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xx, _wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.zz)), u_input.b.wz) % vec2<u32>(32u))) >> (select(u_input.b.zx, ~(~select(vec2<u32>(4294967295u, u_input.c.x), u_input.b.yz, arg_1.d.xx)), arg_1.d.x) % vec2<u32>(32u));
    var var_2 = !(!select(arg_0.d, !vec4<bool>(arg_1.e, global0.a, global0.a, false), true));
    var var_3 = var_2.x && func_2().d.x;
    return Struct_1(arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-67472i, 2147483647i, 34880i), -countOneBits(1i)), -(vec2<i32>(u_input.a, -22725i) | vec2<i32>(-27886i, 2147483647i)) | max(vec2<i32>(46530i, u_input.a), vec2<i32>(13166i, u_input.a)));
    global0 = func_5(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-131f, -653f), vec2<f32>(-1000f, -983f), vec2<bool>(true, false)))))), 52574i << ((47234u & firstLeadingBit(u_input.b.x)) % 32u), func_2().c, vec4<bool>(any(!vec4<bool>(global0.a, true, false, global0.a)), !func_2().d.x, !func_1(-1391f).d.x, global0.a), any(select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a))) || false), var_0);
    global0 = func_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f * -380f)), 982f), -48414i, !(!global0.a), select(vec4<bool>(true, all(vec4<bool>(global0.a, true, global0.a, true)), true, global0.a), vec4<bool>(27877i != u_input.a, false, func_3(Struct_2(vec2<f32>(129f, -1249f), 29220i, true, vec4<bool>(true, true, global0.a, false), true)), false), true), true), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2029f, -1008f) + vec2<f32>(573f, 1034f))))), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -203f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-766f)) - _wgslsmith_f_op_f32(step(-153f, 162f))), !(!func_2().d), global0.a), _wgslsmith_clamp_vec2_i32(-(~select(var_0, vec2<i32>(2147483647i, var_0.x), true)), countOneBits(var_0), ~(~(~var_0))));
    global0 = func_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -565f), 1876f), -2147483647i, true, !vec4<bool>(global0.a, global0.a, func_5(Struct_2(vec2<f32>(780f, 330f), -1i, global0.a, vec4<bool>(true, false, true, global0.a), global0.a), Struct_2(vec2<f32>(716f, 1629f), u_input.a, true, vec4<bool>(global0.a, global0.a, global0.a, false), global0.a), var_0).a, true), !func_3(func_2())), Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1965f)) + 1000f)), u_input.a, false, vec4<bool>(func_5(func_2(), Struct_2(vec2<f32>(1000f, 2427f), 2147483647i, true, vec4<bool>(true, global0.a, global0.a, global0.a), global0.a), var_0).a, 699f <= _wgslsmith_f_op_f32(select(806f, 811f, true)), global0.a, global0.a || true), true), max(var_0, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), var_0), vec2<i32>(i32(-1i) * -2147483647i, u_input.a))));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(f32(-1f) * -980f)))), 359f), 0i, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-611f)) - _wgslsmith_div_f32(-766f, -485f)) != -117f) && true, vec4<bool>(global0.a & false, all(!func_2().d.zyz), global0.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1876f))) * _wgslsmith_f_op_f32(max(-336f, _wgslsmith_f_op_f32(f32(-1f) * -659f)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(262f, _wgslsmith_f_op_f32(select(-1326f, -1031f, global0.a)))))));
    let var_2 = Struct_2(var_1.a, 2147483647i, true, func_1(_wgslsmith_f_op_f32(1629f * _wgslsmith_f_op_f32(-var_1.a.x))).d, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_2.a.x);
}

